class UsersController < ApplicationController
  def new; end

  def create
    email = params[:username]
    password = params[:userpassword]
    User.create(
      email: email,
      password_digest: password
    )
    format.js
    @success = true
    render 'new'
  end

  def destroy; end
end
