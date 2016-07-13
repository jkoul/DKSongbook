class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :songTitle
      t.string :artist
      t.string :publicId
    end
  end
end
