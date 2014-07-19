class AddAddressFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :street, :string
    add_column :users, :street_two, :string
    add_column :users, :city, :string
    add_column :users, :state, :string, limit: 2
    add_column :users, :zip, :string, limit: 5
  end
end
