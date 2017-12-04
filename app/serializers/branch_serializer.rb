class BranchSerializer < ActiveModel::Serializer
  attributes :code, :name, :name_kana, :name_hira, :name_en
end
