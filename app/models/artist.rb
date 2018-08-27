class Artist < ActiveRecord::Base
  extend Sortable
  has_many :comics
  has_many :writers, through: :comics

end
