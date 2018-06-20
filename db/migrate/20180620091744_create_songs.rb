class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :brand
      t.string :album
      t.string :genre
      t.string :chord
    end
  end
end
