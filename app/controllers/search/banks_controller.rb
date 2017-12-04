class Search::BanksController < ApplicationController

  # GET /search/banks
  def index
    @banks = Bank.search(params.require(:query))

    render json: @banks
  end
end
