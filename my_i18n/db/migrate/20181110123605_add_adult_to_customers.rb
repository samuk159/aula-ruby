class AddAdultToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :adult, :boolean
  end
end
