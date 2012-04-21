class CommentsController < ApplicationController

def create
@user = User.find(params[:comment][:user_id])
@comment = @user.comments.create!(params[:comment])
redirect_to @user
end

end