class BanksController < ApplicationController
  before_action :set_bank, only: [:show, :update, :destroy]

  # GET /banks
  def index
    @banks = Bank.all

    render json: @banks
  end

  # GET /banks/:code
  def show
    render json: @bank
  end

  # POST /banks
  def create
    @bank = Bank.new(bank_params)

    if @bank.save
      render json: @bank, status: :created, location: @bank
    else
      render json: @bank.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /banks/:code
  def update
    if @bank.update(bank_params)
      render json: @bank
    else
      render json: @bank.errors, status: :unprocessable_entity
    end
  end

  # DELETE /banks/:code
  def destroy
    @bank.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank
      @bank = Bank.find_by(code: params[:code])
    end

    # Only allow a trusted parameter "white list" through.
    def bank_params
      params.require(:bank).permit(:code, :name, :name_kana, :name_hira, :name_en)
    end
end
