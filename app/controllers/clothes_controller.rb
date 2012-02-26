class ClothesController < ApplicationController
  # GET /clothes
  # GET /clothes.json
  def index
    @clothes = Clothe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clothes }
    end
  end

  # GET /clothes/1
  # GET /clothes/1.json
  def show
    @clothe = Clothe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clothe }
    end
  end

  # GET /clothes/new
  # GET /clothes/new.json
  def new
    @clothe = Clothe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clothe }
    end
  end

  # GET /clothes/1/edit
  def edit
    @clothe = Clothe.find(params[:id])
  end

  # POST /clothes
  # POST /clothes.json
  def create
    @clothe = Clothe.new(params[:clothe])

    respond_to do |format|
      if @clothe.save
        format.html { redirect_to @clothe, notice: 'Clothe was successfully created.' }
        format.json { render json: @clothe, status: :created, location: @clothe }
      else
        format.html { render action: "new" }
        format.json { render json: @clothe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clothes/1
  # PUT /clothes/1.json
  def update
    @clothe = Clothe.find(params[:id])

    respond_to do |format|
      if @clothe.update_attributes(params[:clothe])
        format.html { redirect_to @clothe, notice: 'Clothe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clothe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothes/1
  # DELETE /clothes/1.json
  def destroy
    @clothe = Clothe.find(params[:id])
    @clothe.destroy

    respond_to do |format|
      format.html { redirect_to clothes_url }
      format.json { head :no_content }
    end
  end
end
