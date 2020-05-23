class MessagesController < ApplicationController
  def index
  end

  def create
    @message = Message.new(message_params)

    @message.save
    redirect_to chat_path(params[:chat_id])
  end

  def destory
  end

  def message_params
    params.require(:message).permit(:body, :image).merge(chat_id: params[:chat_id],user_id: current_user.id)
  end
end
