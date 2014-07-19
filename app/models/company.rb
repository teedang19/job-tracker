class Company < ActiveRecord::Base
  has_many :company_users
  has_many :job_seekers, through: :company_users, source: :user

  validates :name, :website, presence: true, uniqueness: true

  geocoded_by :address
  before_save :geocode

  def address
    street_two == "" ? "#{street} #{city}, #{state} #{zip}" : "#{street}, #{street_two} #{city}, #{state} #{zip}"
  end

end
