class CreateWriters < ActiveRecord::Migration[4.2]
  def change
    create_table :writers do |t|
      t.string :name
    end
  end
end
