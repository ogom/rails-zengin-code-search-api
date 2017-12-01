class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.string :code
      t.string :name
      t.string :name_kana
      t.string :name_hira
      t.string :name_en

      t.timestamps
    end
  end
end
