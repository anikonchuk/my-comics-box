class Writer < ActiveRecord::Base
  has_many :comics
  has_many :artists, through: :comics

end
