require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get security" do
    get static_pages_security_url
    assert_response :success
  end

  test "should get sitemap" do
    get static_pages_sitemap_url
    assert_response :success
  end

  test "should get become_a_tutor" do
    get static_pages_become_a_tutor_url
    assert_response :success
  end

  test "should get tips" do
    get static_pages_tips_url
    assert_response :success
  end

  test "should get terms" do
    get static_pages_terms_url
    assert_response :success
  end

  test "should get create_an_account" do
    get static_pages_create_an_account_url
    assert_response :success
  end

end
