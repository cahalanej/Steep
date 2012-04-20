class CommentsController < ApplicationController

def create
@user = User.find(params[:user_id])
@comment = @user.comments.create!(params[:comment])
redirect_to @user
end

end