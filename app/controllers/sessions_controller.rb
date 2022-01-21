class SessionsController < ApplicationController
  def new; end

  def create
    email = params[:email]
    password = params[:userpassword]
    user = User.find_by(email: email)
    response = if user && user.password_digest == password
                 {
                   loggedin: true
                 }
               else
                 {
                   loggein: false
                 }
               end
    render json: response
  end

  def destroy; end
end
