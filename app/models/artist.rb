class Artist < ActiveRecord::Base
  has_many :comics
  has_many :writers, through: :comics

end
