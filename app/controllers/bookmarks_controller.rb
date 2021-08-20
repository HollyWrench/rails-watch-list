class BookmarksController < ApplicationController
  # before_action :find_bookmark, only: [:show, :edit, :update, :destroy]

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list), notice: 'Your bookmark was successfully created!'
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
      redirect_to list_path(@list), notice: 'Your bookmark was successfully updated!'
    else
      render :new
    end
  end

  def destroy
    # @bookmark = bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmark_path, notice: 'Your bookmark was successfully destroyed!'
  end

  private

  # strong methods:

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
