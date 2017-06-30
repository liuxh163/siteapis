class Api::V1::UsersController < Api::V1::BaseController
	before_action :authenticate_user!, only: [:update]

	def update
		@user = User.find(params[:id])
		#return api_error(status: 403) if !UserPolicy.new(current_user, @user).update?
		authorize @user, :update?
		@user.update_attributes(update_params)
	end

	def show
		begin
			@user = User.find(params[:id])
		rescue Exception => e
		  api_error(status: 503)
		end
	end

	def index
		@users = User.all
	end

	def create
		@user = User.new
		@user.email = params[:email]
		@user.name = params[:name]
		@user.activated = DateTime.now
		@user.admin = params[:admin]
		@user.authentication_token = SecureRandom.base64(64)
		@user.password = params[:password]
		p "user is |||| #{params[:email]}--#{@user.name}--#{@user.activated}--#{@user.admin}--#{@user.authentication_token}"
	  if @user.save
	    p "create user success #{@user.id}"
	    api_success(id: @user.id)
	  else
	  	p "create user fail"
	    api_error(status: 500)
	  end
	end

	private

	def update_params
		params.require(:user).permit(:name)
	end
end
