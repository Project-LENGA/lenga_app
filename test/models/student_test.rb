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

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  include Devise::TestHelpers
  
  test "shouls be valid" do
    @student.valid?
  end
  
  test "user_id should be present" do
    @student.user_id = nil
    assert_not @student
  end
end
