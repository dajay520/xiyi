# encoding: utf-8
class UsersController < ApplicationController

  def authorize

  end

  # GET /users
  # GET /users.json
  def index
    #logger.info "进入登陆页面ttttttttt"
    @user = User.new
    if(session[:user])
      redirect_to "/wash_list"
      return
    end

    respond_to do |format|
      format.html # index.html
    end
  end

  #GET /users/login
  def login

    @user = User.find_by_phone params[:phone]
    unless @user and @user.pwd == params[:pwd]
      respond_to do |format|
        format.html {redirect_to user_url}
      end
      return
    end

    session[:user]=@user
    #管理员登陆
    if @user.role_type == 'A'
      redirect_to "/admin/show"
      return
    end

    #普通用户登陆
    if(params[:remember_me]=='0')
      cookies[:remember_me]=@user.id
      puts cookies[:remember_me]
    end
    redirect_to "/wash_list"
  end

  def logout
    session[:user] = nil
    cookies.delete :remember_me
    redirect_to :action => :index
  end
  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    #@user.pwd=params[:user][:phone]
    #设置角色为个人用户
    @user.role_type='P'
    respond_to do |format|
      if @user.save
        session[:user] = @user
        format.html { render :template =>  "/users/reg_result" }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "index" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end
end
