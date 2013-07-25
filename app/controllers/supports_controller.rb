
class SupportsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @post.supports.create(user: current_user)
    redirect_to :back
  end

  def destroy
    @post =Support.where(post_id: params[:id],user_id: current_user.id).delete
    redirect_to :back
  end

end
