class User < ActiveRecord::Base
  has_secure_password

  has_many :potential_companies, class_name: "CompanyUser"
  has_many :companies, through: :potential_companies

  validates :username, presence: true, uniqueness: true

  def full_address
    street_two == "" ? "#{street} #{city}, #{state} #{zip}" : "#{street}, #{street_two} #{city}, #{state} #{zip}"
  end

end
