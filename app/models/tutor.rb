# == Schema Information
#
# Table name: tutors
#
#  id                     :integer          not null, primary key
#  birth_date             :date
#  gender                 :integer
#  nickname               :string
#  processed_visa_by_self :boolean
#  profile_comment        :string
#  school_email           :string
#  tutor_email            :string
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
  validates :gender, presence: true
end
