class UseController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	private 

    def list_params
   		params.require(:users).permit(:id, :username, :email)
  	end


end
