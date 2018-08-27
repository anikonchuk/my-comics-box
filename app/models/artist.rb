class Artist < ActiveRecord::Base
  extend Sorted
  has_many :comics
  has_many :writers, through: :comics

end
