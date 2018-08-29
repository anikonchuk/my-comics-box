module Sortable

  def sorted
    self.all.sort_by {|obj| obj.name}
  end
  
end
