class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number
      t.integer :segment_phone
      t.boolean :default
      t.references :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
