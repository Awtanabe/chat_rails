class AddImageToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :image, :string
  end
end
