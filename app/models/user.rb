class User < ActiveRecord::Base
  has_secure_password
  has_many :comics
  has_many :writers, through: :comics
  has_many :artists, through: :comics

end
