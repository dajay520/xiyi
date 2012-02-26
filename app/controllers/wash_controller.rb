# encoding: utf-8
class WashController < ApplicationController

  def clothes_list
    @clothes = Clothe.all
    puts "userinfo"
    puts session[:user]

    respond_to do |format|
      format.html {render :template => "/wash/list"}
    end
  end

  #第三步，设置取送时间等。
  def wash_setting
    clothes_id = session[:clothes_id]
    result_times = get_time(params[:get_date],params[:get_time])
    Order.transaction do
      @order = Order.new(:get_time_begin=>result_times[0],:get_time_end=>result_times[1])
      @order.clothes << Clothe.find(clothes_id)
      @order.save
    end

    render :template => "/wash/setting_over"

  end

  #第二步，选择要洗的衣服
  def wash_select
    clothes_id = params[:clothes_id]

    if !clothes_id
      redirect_to "/wash_list",notice:"忘记选衣服了吧，洗衣桶里还是空的。"
    else
      session[:clothes_id]=clothes_id
      render :template => "/wash/wash_setting"
    end
  end

  #根据页面传来的日期和时间段，返回开始时间和结束时间的数组
  #example
  #get_time("2012-02-12","1") =>  ["2012-02-12 09:00:00","2012-02-12 11:00:00"]
  def get_time(get_date, get_time)
    result = Array.new

    case get_time
      when '1'
        result << get_date + ' 09:00:00'
        result << get_date + ' 11:00:00'
      when '2'
        result << get_date + ' 13:00:00'
        result << get_date + ' 15:00:00'
    end
    puts result
    result
  end
end
