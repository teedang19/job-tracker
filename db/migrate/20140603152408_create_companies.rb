class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :website
      t.boolean :hiring
      t.string :cto_name
      t.string :cto_email
      t.string :cto_twitter
      t.string :cto_blog_url
      t.timestamps
    end
  end
end
