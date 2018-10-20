class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday
      t.integer :weight
      t.text :bio

      t.timestamps null: false
    end
  end
end
