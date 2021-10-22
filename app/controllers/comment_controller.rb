class CommentController < ApplicationController

  include ApplicationHelper 

  def new 
    @comment = Comment.new
    @post_id = request.url.partition('?')[2]
    @post = Post.find(@post_id)
  end

  def create 
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:comment][:post_id])
    p @post
    @comment.save
    @comments = @post.comments
    p @comments[0]["content"]
    redirect_to posts_path
  end

  def comment_params
    params.require(:comment).permit(:content,:post_id,:user_id)
  end

end
