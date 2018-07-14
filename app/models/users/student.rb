# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_students_on_user_id  (user_id)
#

class Student < ApplicationRecord
  belongs_to :user
end
