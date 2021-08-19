class BookmarksController < ApplicationController
  before_action :find_bookmark, only: [:show, :edit, :update, :destroy]
  def index
    @bookmarks = Bookmark.all
  end

  def show
    # @bookmark = bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmark_path(@bookmark), notice: 'Your bookmark was successfully created!'
    else
      render :new
    end
  end

  def edit
    # @bookmark = bookmark.find(params[:id])
  end

  def update
    # @bookmark = bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to bookmark_path(@bookmark), notice: 'Your bookmark was successfully updated!'
    else
      render :new
    end
  end

  def destroy
    # @bookmark = bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path, notice: 'Your bookmark was successfully destroyed!'
  end

  private

  # strong methods:

  def bookmark_params
    params.require(:bookmark).permit(:name)
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
