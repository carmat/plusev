class SessionsController < ApplicationController
  def new
    @title = "Sign In"
  end

  def create
    user = User.authenticate(params[:session][:email], params[:session][:password])
	if user.nil?
	  flash.now[:error] = "Oops! It seems the email address you used isn't registered, or you used the wrong password. Please try again."
	  @title = "Sign In"
	  render 'new'
	else
	  sign_in user
	  redrect_to user
	end
  end

  def destroy
    sign_out
	redirect_to root_path
  end
end
