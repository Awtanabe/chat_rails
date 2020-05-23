class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %[show]

  def index
    @users = User.all
  end

  def show
    @chats = Chat.joins(:users).where(id: @user.id)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
