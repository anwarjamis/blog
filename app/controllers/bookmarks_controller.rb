class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[edit update destroy]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to posts_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:post_id, :category_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
