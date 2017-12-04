class Branch < ApplicationRecord
  include SearchCop

  search_scope :search do
    attributes names: [:name_kana, :name_hira, :name_en]
    options :names, left_wildcard: false
  end

  belongs_to :bank

  def to_param
    code
  end
end
