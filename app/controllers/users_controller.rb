class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def update
    raise
  end

  def destroy
    if @user.destroy
      redirect_to root_path
    else
      render root_path
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
