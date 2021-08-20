class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]
  def index
    @lists = List.all
    @movies = Movie.all
  end

  def show
    # @list = list.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), notice: 'Your list was successfully created!'
    else
      render :new
    end
  end

  def edit
    # @list = list.find(params[:id])
  end

  def update
    # @list = list.find(params[:id])
    if @list.update(list_params)
      redirect_to list_path(@list), notice: 'Your list was successfully updated!'
    else
      render :new
    end
  end

  def destroy
    # @list = list.find(params[:id])
    @list.destroy
    redirect_to root_path, notice: 'Your list was successfully destroyed!'
  end

  private

  # strong methods:

  def list_params
    params.require(:list).permit(:name)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
