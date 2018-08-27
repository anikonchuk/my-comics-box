class Comic < ActiveRecord::Base
  belongs_to :user
  belongs_to :writer
  belongs_to :artist 

end
