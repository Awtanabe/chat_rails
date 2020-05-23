# frozen_string_literal: true

module ChatDecorator
  def chat_user_name(user)
    users.where.not(id: user.id).first&.name
  end
end
