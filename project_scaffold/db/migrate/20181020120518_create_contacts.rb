class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.date :birthday
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
