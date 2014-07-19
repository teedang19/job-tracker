class AddAdressFieldsToCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :address
    add_column :companies, :street, :string
    add_column :companies, :street_two, :string
    add_column :companies, :city, :string
    add_column :companies, :state, :string, limit: 2
    add_column :companies, :zip, :string, limit: 5
  end
end
