class PostsController < ApplicationController
  def create
    @user = User.find(params[:post][:user_id])
    @post = @user.posts.create!(params[:post])
    redirect_to @user
  end

   def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  
end