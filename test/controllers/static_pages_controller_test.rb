require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "| Lenga"
  end
  
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Lenga"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Lenga Help Center #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About Us #{@base_title}"
  end

  test "should get security" do
    get security_path
    assert_response :success
    assert_select "title", "Security #{@base_title}"
  end

  test "should get sitemap" do
    get sitemap_path
    assert_response :success
    assert_select "title", "Sitemap #{@base_title}"
  end

  test "should get become_a_tutor" do
    get become_a_tutor_path
    assert_response :success
    assert_select "title", "Become a Tutor, Tell your Experience #{@base_title}"
  end

  test "should get tips" do
    get tips_path
    assert_response :success
    assert_select "title", "Tips for Utilizing LENGA 100% #{@base_title}"
  end

  test "should get terms" do
    get terms_path
    assert_response :success
    assert_select "title", "Terms of Service #{@base_title}"
  end

  test "should get create_an_account" do
    get create_an_account_path
    assert_response :success
    assert_select "title", "Create an Account, Ask Anything to your Senpai! #{@base_title}"
  end
end