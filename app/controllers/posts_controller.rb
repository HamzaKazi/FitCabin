class PostsController < ApplicationController

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @post = Post.new(post_params)
    @post.chatroom = @chatroom
    @post.user = current_user
    if @post.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "post", locals: {post: @post})
      )
      head :ok
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

end
