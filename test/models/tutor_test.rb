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
  include Devise::TestHelpers

  def setup
    @user = users(:jorn)
  end

  test "should be valid" do
    @tutor.valid?
  end

  test "user_id should be present " do
    @tutor.user_id = nil
    assert_not @tutor
  end

  test "graduate_year should be present" do
    @tutor.graduate_year = nil
    assert_not @tutor
  end
end
