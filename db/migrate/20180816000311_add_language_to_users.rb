class AddLanguageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :language, :integer, default: 0
  end

  add_foreign_key :users, :languages, column: :language, primary_key: :id
end
