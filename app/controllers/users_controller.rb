class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  
 #before_filter :authenticate, :except => [:index, :show]
  def index
    @users = User.search(params[:search])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @tea = Tea
    @user = User.find(params[:id])
    @post = @user.posts.build()
    @posts = @user.posts
    @likes = @user.likes
    @teas=@user.teas
    @rand = @teas.find :first, :offset => ( @teas.count * rand ).to_i
    if (@rand != nil)
      @randtype = @rand.tea_type
      @randtea = Tea.where('tea_type_id =?' , @randtype)
      @rtea = @randtea.find :first, :offset => ( @randtea.count * rand ).to_i
      
    end
      
    
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
    if @user.save
      sign_in @user
      redirect_to @user
    else
      render 'new'
    end
  end


  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
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
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
end

private

    def signed_in_user
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

#def authenticate
#authenticate_or_request_with_http_basic do |name, password|
#name == "admin" && password == "secret"
#end

#end