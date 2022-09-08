class PostsController < ApplicationController

  def new
    @post = Post.new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def like
    set_list
    @post = Post.find(params[:id])
    # @post.likes = :likes
    if @post.likes.nil?
      @post.likes = 1
    else
      @post.likes += 1
    end

    @post.save!
    redirect_to posts_path, status: :see_other
  end

  def show
    @comment = @post.comments
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
  end

  private

  def set_list
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:caption, :likes, :image)
  end

  def comment_params
    params.require(:post).permit(:caption, :likes, :image)
  end

end
