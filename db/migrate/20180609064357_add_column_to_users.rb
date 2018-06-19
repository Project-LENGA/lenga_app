class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tutor_activated, :boolean, default: false
  end
end
