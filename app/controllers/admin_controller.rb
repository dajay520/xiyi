class AdminController < ApplicationController



  def authorize
    unless session[:user] and session[:user].role_type =='A'
      redirect_to '/'
    end
  end


  def show
      if session[:user].partner and session[:user].partner.periods
         @periods = Period.all # session[:user].partner.periods
         if(params[:get_date])
           @dt=params[:get_date]
         else
           @dt = DateTime.now.utc.strftime('%Y-%m-%d')
         end

         @periods.each do |per|
           per.order_size= Order.where(:get_date => @dt,:get_time_begin => per.begin_time,:get_time_end => per.end_time).size
         end



        #@orders = Order.where(:get_date => dt).order('get_time_begin')
        @orders = Order.all
      end
  end

  def show_detail
    per=Period.find params[:per_id]
    @orders = Order.where(:get_date=>params[:get_date],:get_time_begin=>per.begin_time,:get_time_end =>per.end_time )
  end
end
