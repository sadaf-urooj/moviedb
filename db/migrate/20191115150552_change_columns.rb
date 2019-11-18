class ChangeColumns < ActiveRecord::Migration[5.2]
  def up
     rename_column :movies, :igdb_rating, :imdb_rating
     rename_column :movies, :descriptation, :description
     change_column_default :movies, :imdb_rating, 0

  end

   def down
     rename_column :movies, :imdb_rating, :igdb_rating
     rename_column :movies, :description, :descriptation
     change_column_default :movies, :imdb_rating, nil

  end
end
