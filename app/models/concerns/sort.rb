module Sort
  extend ActiveSupport::Concern

  included do
    scope :recent, -> {order(id: :desc).limit(5)}
  end

  def hello
    puts "hello"
  end
end