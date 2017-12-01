class BranchesController < ApplicationController
  before_action :set_bank, only: [:index, :show, :create, :update, :destroy]
  before_action :set_branch, only: [:show, :update, :destroy]

  # GET /banks/:bank_code/branches
  def index
    @branches = @bank.branches

    render json: @branches
  end

  # GET /banks/:bank_code/branches/:code
  def show
    render json: @branch
  end

  # POST /banks/:bank_code/branches
  def create
    @branch = @bank.branches.new(branch_params)

    if @branch.save
      render json: @branch, status: :created, location: [@bank, @branch]
    else
      render json: @branch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /banks/:bank_code/branches/:code
  def update
    if @branch.update(branch_params)
      render json: @branch
    else
      render json: @branch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /banks/:bank_code/branches/:code
  def destroy
    @branch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank
      @bank = Bank.find_by(code: params[:bank_code])
    end

    def set_branch
      @branch = @bank.branches.find_by(code: params[:code])
    end

    # Only allow a trusted parameter "white list" through.
    def branch_params
      params.require(:branch).permit(:code, :name, :name_kana, :name_hira, :name_en, :bank_id)
    end
end
