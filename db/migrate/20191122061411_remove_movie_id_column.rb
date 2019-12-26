class RemoveMovieIdColumn < ActiveRecord::Migration[5.2]

  def up
    remove_column :votes, :movie_id
  end


   def down
    add_column :votes, :movie_id, :integer
   end
   
end
