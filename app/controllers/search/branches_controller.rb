class Search::BranchesController < ApplicationController
  before_action :set_bank

  # GET /search/banks/:bank_code/branches
  def index
    @branches = @bank.branches.search(params.require(:query))

    render json: @branches
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank
      @bank = Bank.find_by(code: params[:bank_code])
    end
end
