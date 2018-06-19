# == Schema Information
#
# Table name: tutors
#
#  id            :integer          not null, primary key
#  graduate_year :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
# Indexes
#
#  index_tutors_on_user_id  (user_id)
#

class Tutor < ApplicationRecord
  belongs_to :user

  validates :graduate_year, presence: true
end
