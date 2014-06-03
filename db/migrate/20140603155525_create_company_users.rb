class CreateCompanyUsers < ActiveRecord::Migration
  def change
    create_table :company_users do |t|
      t.integer :user_id
      t.integer :company_id
      t.text :notes
      t.string :advocate_name
      t.string :advocate_email
      t.string :advocate_twitter
      t.datetime :last_reached_out
      t.datetime :last_follow_up
      t.text :next_step
      t.text :interview_notes
      t.boolean :offer
      t.timestamps
    end
  end
end
