class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.references :Album, null: false, foreign_key: true
      t.string :title
      t.integer :duration
      t.text :youtube_link

      t.timestamps
    end
  end
end
