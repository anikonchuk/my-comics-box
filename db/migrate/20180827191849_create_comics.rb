class CreateComics < ActiveRecord::Migration[4.2]
  def change
    create_table :comics do |t|
      t.string :name
      t.text :notes
      t.integer :user_id
      t.integer :writer_id
      t.integer :artist_id
    end
  end
end
