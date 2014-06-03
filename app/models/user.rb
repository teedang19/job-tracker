class User < ActiveRecord::Base
  has_secure_password

  has_many :company_users
  has_many :companies, through: :company_users
end
