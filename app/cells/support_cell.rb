class SupportCell < Cell::Rails

  def show args
    @user = args[:user]
    @post = args[:post]
    return render view: :up  if  @post.supports.where(user_id: @user.id).blank?
    render  view: :down 
  end

end
