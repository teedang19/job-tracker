class Company < ActiveRecord::Base
  has_many :company_users
  has_many :job_seekers, through: :company_users, source: :user

  validates :name, :website, presence: true, uniqueness: true

  def full_address
    street_two == "" ? "#{street} #{city}, #{state} #{zip}" : "#{street}, #{street_two} #{city}, #{state} #{zip}"
  end

end
