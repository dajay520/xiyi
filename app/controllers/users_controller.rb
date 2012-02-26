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
    logger.info "进入登陆页面ssssssssss"
    @user = User.find_by_phone params[:phone]
    unless @user

      respond_to do |format|
        format.html {redirect_to user_url}
      end

      return
    end
    session[:user]=@user
    redirect_to "/wash_list"
  end

  def logout
    session[:user] = nil
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

    respond_to do |format|
      if @user.save
        session[:user] = @user
        format.html { redirect_to :action=>:index, notice: 'User was successfully created.' }
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
