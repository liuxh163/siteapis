class ApplicationController < ActionController::API
	include ActionController::RequestForgeryProtection
	include ActionView::Layouts
end
