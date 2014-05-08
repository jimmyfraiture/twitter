class ListDistributionsController < ApplicationController
  def index
  end

  def create
    ListDistribution.create(ld_params)
    redirect_to lists_path
  end

  def new
    @ld = ListDistribution.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def ld_params
    params.require(:list_distribution).permit(:id, :user_id, :list_id)
  end
end
