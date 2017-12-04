class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.string :code, null: false, default: '', index: { unique: true }
      t.string :name, null: false, default: ''
      t.string :name_kana, null: false, default: ''
      t.string :name_hira, null: false, default: ''
      t.string :name_en, null: false, default: ''

      t.timestamps
    end
  end
end
