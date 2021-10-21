class LikesController < ApplicationController

  def new 
    @like = Like.new
  end 

  def create
    if already_liked?
      flash[:notice] = "You can't like a post more than once"
    else
      @like = Like.new(user_id: Current.user.id, react_type: likes_params[:react_type], post_id: likes_params[:post_id])
      @like.save
     end
    redirect_to posts_path
  end

  def already_liked?
    Like.where(user_id: Current.user.id, post_id:
    params[:post_id]).exists?
  end

  def index

    redirect_to posts_path

  end 


  private

  def likes_params
    params.permit(:react_type,:post_id)
  end

end


