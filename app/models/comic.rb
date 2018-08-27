class Comic < ActiveRecord::Base
  extend Sortable
  belongs_to :user
  belongs_to :writer
  belongs_to :artist

end
