# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    flash.notice = 'Post created'
    redirect_to posts_path
  end
  def post_params
    params.require(:post).permit(:content)
  end
end
