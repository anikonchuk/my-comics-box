class Writer < ActiveRecord::Base
  extend Sortable
  has_many :comics
  has_many :artists, through: :comics

end
