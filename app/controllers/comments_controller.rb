class CommentsController < ApplicationController

  # line for very basic authentication
  http_basic_authenticate_with name: "lbe", password: "lbe",
      only: [:destroy, :edit]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:author, :body))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

end
