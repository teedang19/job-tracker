class User < ActiveRecord::Base
  has_secure_password

  has_many :potential_companies, class_name: "CompanyUser"
  has_many :companies, through: :potential_companies

  validates :username, presence: true, uniqueness: true
end
