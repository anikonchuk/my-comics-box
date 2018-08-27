class Comic < ActiveRecord::Base
  extend Sorted
  belongs_to :user
  belongs_to :writer
  belongs_to :artist

end
