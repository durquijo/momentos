class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def index	
	render "/index"	
	end
	def categorias
	render "/categorias"
	end
	def aplica
	render "/aplica"
	end

end