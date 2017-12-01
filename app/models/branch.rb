class Branch < ApplicationRecord
  belongs_to :bank

  def to_param
    code
  end
end
