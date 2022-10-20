class CommentsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = Post.find(params[:comment][:post_id])
    @comment = Comment.new(
      user_id:params[:user_id],
      post_id:params[:comment][:post_id],
      body: params[:comment][:body])
    # @user.comments = @comment
    # @post.comments = @comment
    if @comment.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end
end
