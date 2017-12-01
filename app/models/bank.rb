class Bank < ApplicationRecord
  has_many :branches, dependent: :destroy

  def to_param
    code
  end
end
