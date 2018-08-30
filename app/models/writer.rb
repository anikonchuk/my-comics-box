class Writer < ActiveRecord::Base
  extend Sortable
  validates :name, presence: true
  has_many :comics
  has_many :artists, through: :comics

end
