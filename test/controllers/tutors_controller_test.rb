require 'test_helper'

class TutorsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    @user = users(:john)
  end

  test "dashboard should redirect to sign in when not logged in" do
    get tutor_dashboard_path(@user)
    assert_redirected_to user_session_url
  end

  test "dashboard should render proper template" do
    sign_in(@user)
    get tutor_dashboard_path(@user)
    assert_template 'tutors/dashboard'
  end

  test "create should render new when tutor not saved" do
    sign_in(@user)
    post tutors_path, params: {
      tutor: {
        graduate_year: nil
      }
    }
    assert_template 'tutors/new'
  end

  test "create should redirect to dashboard when saved successfully" do
    sign_in(@user)
    assert_difference 'Tutor.count', 1 do
      post tutors_path, params: {
        tutor: {
          graduate_year: '2018-06-01'
        }
      }
    end
    @user.reload
    assert @user.tutor_activated
    assert_redirected_to tutor_dashboard_path(@user.tutor, locale: 'en')
  end
end
