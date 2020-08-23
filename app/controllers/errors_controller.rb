class ErrorsController < ApplicationController
  protect_from_forgery with: :null_session
  
  def not_found
  	render 'errors/not_found', status: 404
  end

  def internal_server_error
  	#render 'errors/internal_server_error', status: 500
  	render 'errors/internal_server_error', status: 404
  end
end