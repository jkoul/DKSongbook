class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :songTitle
      t.string :artist
      t.string :publicId
      t.integer :internalId
      t.datetime :dateCreated
      t.datetime :dateUpdated
    end
  end
end
