class SupportCell < Cell::Rails

  def show args
    @user = args[:user]
    @post = Post.find(args[:post].id)
    render
  end

end
