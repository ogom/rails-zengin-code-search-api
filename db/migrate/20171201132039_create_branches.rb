class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.string :code
      t.string :name
      t.string :name_kana
      t.string :name_hira
      t.string :name_en
      t.references :bank, foreign_key: true

      t.timestamps
    end
  end
end
