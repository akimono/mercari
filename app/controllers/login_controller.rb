class LoginController < ApplicationController
	def index
	end

	def check
		@users = User.find(:all, :conditions => ['username = ?', params[:user]])
		if @users.empty?
			flash[:notice] = "Incorrect Username or Password"
			redirect_to action: 'index'
		else
			if @users.first.password == params[:password]
				session[:user] = @users.first.username
				session[:admin] = @users.first.admin
				redirect_to action: 'index'
			else
				flash[:notice] = "Incorrect Username or Password"
				redirect_to action: 'index'
			end
		end
	end
	def logout
		session[:user] = nil
		session[:admin] = nil
		redirect_to action:'index'
	end
end