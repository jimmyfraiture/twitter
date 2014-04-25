class ListsController < ApplicationController
  before_action :set_list, only: [:show, :update, :edit, :destroy]

  def index
    @lists = List.all
  end

  def create
    List.create(list_params)
    redirect_to lists_path
  end

  def new
    @list = List.new
  end

  def edit
  end

  def show
    @users = @list.users
  end

  def update
    List.update(@list.id, list_params)
    redirect_to lists_path
  end

  def destroy
    List.destroy(@list.id)
    redirect_to lists_path
  end

  def join
    @ld = ListDistribution.new
  end

  def jupdate
    ListDistribution.create(ld_params)
    redirect_to lists_path
  end

  private 

  def list_params
    params.require(:list).permit(:id, :name, :comment)
  end

  def set_list
    @list = List.find(params[:id])
  end

  def ld_params
    params.require(:list_distribution).permit(:id, :user_id, :list_id)
  end
end
