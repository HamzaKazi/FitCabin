class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def edit
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      redirect_to posts_path(anchor: "post-#{@post.id}")
    else
      render "new"
    end
  end

  # def inde
  #   @comments = Comment.where(user_id: current_user.id)
  # end

  def destroy
    set_comment
    @comment.destroy
    redirect_to posts_path, status: :see_other
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:post_id, :content, :date)
  end
end
