# == Schema Information
#
# Table name: tutors
#
#  id                     :integer          not null, primary key
#  processed_visa_by_self :boolean
#  profile_comment        :string
#  school_email           :string
#  used_agent             :boolean
#  used_agent_name        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_id                :integer
#
# Indexes
#
#  index_tutors_on_user_id  (user_id)
#

class Tutor < ApplicationRecord
  belongs_to :user

  validates :school_email, presence: true
end
