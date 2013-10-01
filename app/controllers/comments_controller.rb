class CommentsController < ApplicationController

  # line for very basic authentication
  http_basic_authenticate_with name: "lbe", password: "lbe",
      only: [:destroy, :edit]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment].permit(:author, :body))
    #@comment.author_id = current_user.id
    @comment.save
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

end
