class Comic < ActiveRecord::Base
  extend Sortable
  validates :name, :writer_id, :artist_id, presence: true
  belongs_to :user
  belongs_to :writer
  belongs_to :artist

end
