class BookmarksController < ApplicationController

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

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:post_id, :category_id)
  end

  def set_bookmark
  end
end
