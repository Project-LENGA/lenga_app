require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "| LENGA"
  end
  
  test "should get root" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home #{@base_title}"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Lenga Help Center #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About Us #{@base_title}"
  end

  test "should get security" do
    get static_pages_security_url
    assert_response :success
    assert_select "title", "Security #{@base_title}"
  end

  test "should get sitemap" do
    get static_pages_sitemap_url
    assert_response :success
    assert_select "title", "Sitemap #{@base_title}"
  end

  test "should get become_a_tutor" do
    get static_pages_become_a_tutor_url
    assert_response :success
    assert_select "title", "Become a Tutor, Tell your Experience #{@base_title}"
  end

  test "should get tips" do
    get static_pages_tips_url
    assert_response :success
    assert_select "title", "Tips for Utilizing LENGA 100% #{@base_title}"
  end

  test "should get terms" do
    get static_pages_terms_url
    assert_response :success
    assert_select "title", "Terms of Service #{@base_title}"
  end

  test "should get create_an_account" do
    get static_pages_create_an_account_url
    assert_response :success
    assert_select "title", "Create an Account, Ask Anything to your Senpai! #{@base_title}"
  end

end
