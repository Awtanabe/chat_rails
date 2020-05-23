# frozen_string_literal: true

require 'test_helper'

class ChatDecoratorTest < ActiveSupport::TestCase
  def setup
    @chat = Chat.new.extend ChatDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
