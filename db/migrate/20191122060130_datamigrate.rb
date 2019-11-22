class Datamigrate < ActiveRecord::Migration[5.2]
    
  def up
        Vote.all.each do |v|
        v.votable_id = v.movie_id
        v.votable_type = 'Movie'
        v.save
    end
  end

   def down
        Vote.all.each do |v|
        v.movie_id = v.votable_id
        v.save        
    end
  end
end
