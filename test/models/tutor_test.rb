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

require 'test_helper'

class TutorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
