class User < ActiveRecord::Base
  has_secure_password

  has_many :potential_companies, class_name: "CompanyUser"
  has_many :companies, through: :potential_companies

  validates :username, :email, presence: true, uniqueness: true

  geocoded_by :address
  before_save :geocode

  def address
    street_two == "" ? "#{street} #{city}, #{state} #{zip}" : "#{street}, #{street_two} #{city}, #{state} #{zip}"
  end

  def valid_email
    # /[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}/
  end
end
