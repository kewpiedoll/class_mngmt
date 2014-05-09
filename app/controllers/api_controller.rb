class ApiController < ActionController::Base

	before_filter :check_api_token

	private
	def check_api_token
		render json: 'Bad!!', status: :unauthorized unless params[:token] == 'renee'
	end

end