class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
  end

  def set_post
  end
end
