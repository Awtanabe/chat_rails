class AddDateToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :limit_date, :datetime
  end
end
