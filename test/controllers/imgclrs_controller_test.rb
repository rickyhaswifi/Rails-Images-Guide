require 'test_helper'

class ImgclrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get imgclrs_index_url
    assert_response :success
  end

  test "should get new" do
    get imgclrs_new_url
    assert_response :success
  end

  test "should get show" do
    get imgclrs_show_url
    assert_response :success
  end

end
