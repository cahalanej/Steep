class TeasController < ApplicationController
  # GET /teas
  # GET /teas.json
  def index
     @teas = Tea.all
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teas }
      
    end
        #@teas = Tea.search(params[:search])
  end
 
  # GET /teas/1
  # GET /teas/1.json
  def show
    @tea = Tea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tea }
    end
  end

  # GET /teas/new
  # GET /teas/new.json
  def new
    @tea = Tea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tea }
    end
  end

  # GET /teas/1/edit
  def edit
    @tea = Tea.find(params[:id])
  end

  # POST /teas
  # POST /teas.json
  def create
    @user = User.find(params[:like][:user_id])
    @like = @user.likes.create!(params[:like])
    @likes = Like.find(params[:tea][:like_id])
    @tea = @likes.tea.create!(params[:tea])
    redirect_to @user
  end

  # PUT /teas/1
  # PUT /teas/1.json
  def update
    @tea = Tea.find(params[:id])

    respond_to do |format|
      if @tea.update_attributes(params[:tea])
        format.html { redirect_to @tea, notice: 'Tea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teas/1
  # DELETE /teas/1.json
  def destroy
    @tea = Tea.find(params[:id])
    @tea.destroy

    respond_to do |format|
      format.html { redirect_to teas_url }
      format.json { head :no_content }
    end
  end
  
  def search
  @teas = Tea.search params[:search]
end
end
