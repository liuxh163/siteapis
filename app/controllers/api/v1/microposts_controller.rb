class Api::V1::MicropostsController < Api::V1::BaseController

	def create
		user = User.find(params[:user_id])
		@micropost = Micropost.new
		@micropost.title = params[:title]
		@micropost.content = params[:content]
		@micropost.user_id = user.id
		if @micropost.save
			p "create micropost success #{@micropost.id}"
	    api_success(id: @micropost.id)
		else
			p "create user fail"
	    api_error(status: 500)
		end
	end

	def index
		user = User.find(params[:user_id])
		@microposts = paginate(user.microposts)
	end
end
