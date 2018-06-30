class AddSchoolEmailToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :school_email, :string
    add_column :users, :tutor_activation_digest, :string
  end
end
