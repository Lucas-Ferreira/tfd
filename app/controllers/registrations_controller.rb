class RegistrationsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
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
      }
    else
      render :status => 400,
             :json => {:message => @user.errors.full_messages}
    end
  end


  private

  def sign_up_params
    params.permit(:email, :username, :password, :role)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
