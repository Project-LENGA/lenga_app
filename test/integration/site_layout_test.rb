require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path, count: 3
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", security_path
    assert_select "a[href=?]", sitemap_path
    assert_select "a[href=?]", become_a_tutor_path
    assert_select "a[href=?]", tips_path
    assert_select "a[href=?]", terms_path
  end
end
