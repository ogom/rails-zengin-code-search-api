require 'test_helper'

class Search::BanksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_banks_index_url
    assert_response :success
  end

end
