class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.string :code, null: false, default: ''
      t.string :name, null: false, default: ''
      t.string :name_kana, null: false, default: ''
      t.string :name_hira, null: false, default: ''
      t.string :name_en, null: false, default: ''
      t.references :bank, foreign_key: true

      t.timestamps
    end
    add_index :branches, [:bank_id, :code], unique: true
  end
end
