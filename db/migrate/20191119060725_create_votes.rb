class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
        t.integer :status
        t.integer :movie_id
        t.integer :user_id

      t.timestamps
    end
    add_index('votes', 'movie_id')
    add_index('votes', 'user_id')

  end
end
