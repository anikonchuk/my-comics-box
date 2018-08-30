class Artist < ActiveRecord::Base
  extend Sortable
  validates :name, presence: true
  has_many :comics
  has_many :writers, through: :comics

end
