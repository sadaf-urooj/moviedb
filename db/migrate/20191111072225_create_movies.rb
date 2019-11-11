class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
        t.integer :genre_id
        t.string :title
        t.text :descriptation
        t.decimal :igdb_rating

      t.timestamps
    end
    add_index("movies", "genre_id")
  end
end
