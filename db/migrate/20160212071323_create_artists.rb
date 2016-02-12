class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artistn
      t.timestamps null: false
    end
  end
end
