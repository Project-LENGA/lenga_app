class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages, id: :integer do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
