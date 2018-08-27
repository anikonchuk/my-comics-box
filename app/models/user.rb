class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  has_many :comics
  has_many :writers, through: :comics
  has_many :artists, through: :comics

  def slug
    self.username.downcase.gsub(/ /, "-")
  end

  def self.find_by_slug(slug)
    self.all.find do |username|
      username.slug == slug
    end
  end

end
