class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]
  def index
    @lists = list.all
  end

  def show
    # @list = list.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  def edit
    # @list = list.find(params[:id])
  end

  def update
    # @list = list.find(params[:id])
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  def destroy
    # @list = list.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  # strong methods:

  def list_params
    params.require(:list).permit(:title, :details, :completed)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
