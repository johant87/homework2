class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.references :songs, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
