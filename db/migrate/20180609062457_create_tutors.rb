class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.date :graduate_year
      t.references :user, index: true

      t.timestamps
    end
  end
end
