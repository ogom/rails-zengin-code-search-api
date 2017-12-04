require 'test_helper'

class Search::BranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank = banks(:one)
  end

  test "should get index" do
    get search_bank_branches_url(@bank), params: { query: :a }
    assert_response :success
  end

end
