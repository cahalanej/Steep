class WhiteController < ApplicationController
 # GET /tea_types
  # GET /tea_types.json
  def index
    @tea_types = TeaType.where(:name => 'White')
 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tea_types }
    end
  end

  # GET /tea_types/1
  # GET /tea_types/1.json
  def show
    @tea_type = TeaType.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tea_type }
    end
  end

  # GET /tea_types/new
  # GET /tea_types/new.json
  def new
    @tea_type = TeaType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tea_type }
    end
  end

  # GET /tea_types/1/edit
  def edit
    @tea_type = TeaType.find(params[:id])
  end

  # POST /tea_types
  # POST /tea_types.json
  def create
    @tea_type = TeaType.new(params[:tea_type])

    respond_to do |format|
      if @tea_type.save
        format.html { redirect_to @tea_type, notice: 'Tea type was successfully created.' }
        format.json { render json: @tea_type, status: :created, location: @tea_type }
      else
        format.html { render action: "new" }
        format.json { render json: @tea_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tea_types/1
  # PUT /tea_types/1.json
  def update
    @tea_type = TeaType.find(params[:id])

    respond_to do |format|
      if @tea_type.update_attributes(params[:tea_type])
        format.html { redirect_to @tea_type, notice: 'Tea type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tea_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tea_types/1
  # DELETE /tea_types/1.json
  def destroy
    @tea_type = TeaType.find(params[:id])
    @tea_type.destroy

    respond_to do |format|
      format.html { redirect_to tea_types_url }
      format.json { head :no_content }
    end
  end
end