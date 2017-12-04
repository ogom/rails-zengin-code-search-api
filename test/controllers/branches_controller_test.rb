require 'test_helper'

class BranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank = banks(:one)
    @branch = branches(:one)
  end

  test "should get index" do
    get bank_branches_url(@bank), as: :json
    assert_response :success
  end

  test "should create branch" do
    assert_difference('Branch.count') do
      post bank_branches_url(@bank), params: { branch: { bank_id: @branch.bank_id, code: @branch.code, name: @branch.name, name_en: @branch.name_en, name_hira: @branch.name_hira, name_kana: @branch.name_kana } }, as: :json
    end

    assert_response 201
  end

  test "should show branch" do
    get bank_branch_url(@bank, @branch), as: :json
    assert_response :success
  end

  test "should update branch" do
    patch bank_branch_url(@bank, @branch), params: { branch: { bank_id: @branch.bank_id, code: @branch.code, name: @branch.name, name_en: @branch.name_en, name_hira: @branch.name_hira, name_kana: @branch.name_kana } }, as: :json
    assert_response 200
  end

  test "should destroy branch" do
    assert_difference('Branch.count', -1) do
      delete bank_branch_url(@bank, @branch), as: :json
    end

    assert_response 204
  end
end
