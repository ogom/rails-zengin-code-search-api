require 'test_helper'

class Search::BranchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_branches_index_url
    assert_response :success
  end

end
