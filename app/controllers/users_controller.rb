class UsersController < ApplicationController
	def new
		# renderizar la vista
	end



	def create
		@user = User.new(users_params)
		if users_validation[:password] == users_validation[:password2] && users_validation[:email] == users_validation[:email2]
			if @user.save
				session[:user] = @user.id
				redirect_to root_path
			else
				render "new"
			end
		else
			render "new"
		end

			
	end


	def login
	end

	def login_data
		@user = User.where(email: users_params[:email]).first
		if @user && @user.password == users_params[:password]
			session[:user] = @user.id
			redirect_to @user
		else
			render "login"
		end
	end	

	private
	def users_params
		params.require(:user).permit(:name, :email, :password, :gender)
	end	
	def users_validation
		params.require(:user).permit(:email2, :password2)
	end	
end

