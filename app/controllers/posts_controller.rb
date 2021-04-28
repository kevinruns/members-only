class PostsController < ApplicationController

  before_action :authenticate_user!

  def new 
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

end
