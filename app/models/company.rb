class Company < ActiveRecord::Base
  has_many :company_users
  has_many :job_seekers, through: :company_users, source: :user
end
