class RegistrationsController < ApplicationController
  respond_to :json
  def new
    @users = User.all
  end

  def create
    @user = User.create(sign_up_params)
    if @user.save
      render json: {
        messages: "Register In Successfully",
        is_success: true,
        data: {user: @user}
      }, status: :ok
    else
      render :status => 400,
             :json => {:message => @user.errors.full_messages}
    end
  end

  private

  def sign_up_params
    params.permit(:email, :username, :password, :role)
  end
end
