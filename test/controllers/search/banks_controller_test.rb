require 'test_helper'

class Search::BanksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_banks_url, params: { query: :a }
    assert_response :success
  end

end
