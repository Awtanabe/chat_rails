class ChatsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @chat = Chat.find(params[:id])
    @messages = @chat.messages
  end

  def create
    @users = User.where(id: [params[:user_id], current_user.id])

    @chat = Chat.new
    @chat.users << @users
    if @chat.save
      flash[:sccess] = "OK"
      redirect_to chat_path(@chat)
    else
      flash[:fail] = "NG"
      redirect_to root_path
    end
  end

  def destroy
  end
end
