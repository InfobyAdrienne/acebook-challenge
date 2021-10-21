class LikesController < ApplicationController

  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      # @post.likes.create(user_id: current_user.id, react_type: params[:react_type])
    end
    redirect_to posts_paths
  end

  def already_liked?
    Like.where(user_id: Current.user.id, post_id:
    params[:post_id]).exists?
  end
end
