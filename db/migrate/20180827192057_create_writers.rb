class CreateWriters < ActiveRecord::Migration
  def change
    create_table :writers do |t|
      t.string :name
    end
  end
end
