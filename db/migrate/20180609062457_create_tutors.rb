class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.string :school_email
      t.boolean :used_agent
      t.string :used_agent_name
      t.boolean :processed_visa_by_self
      t.string :profile_comment

      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
