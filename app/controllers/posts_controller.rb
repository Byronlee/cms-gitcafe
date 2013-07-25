# -*- coding: utf-8 -*-
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :only =>[:new, :create ,:edit,:update,:destroy]
  before_filter :initiail_posts ,only: :index

  def hot
    @posts = Post.limit(50).sort_by(&:pv).reverse
    render "index"
  end

  def show
    @post = Post.find(params[:id])
    @post.views.create(user: current_user)
  end

  def new
    @post = Post.new
  end

  def edit
  end

  # todo 国际化
  def create
    @post = Post.new(post_params)
    return redirect_to @post, notice: '文章创建成功！' if @post.save
    render action: 'new'
  end

  def update
    redirect_to @post, notice: '文章更新成功！' if @post.update(post_params)
    render action: 'edit'
  end

  def destroy
    @post.destroy
    redirect_to posts_url
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end
    def post_params
      params.require(:post).permit(:title, :content)
    end

    def initiail_posts
      @posts = Post.limit(50).sort(created_at: -1)
    end
end
