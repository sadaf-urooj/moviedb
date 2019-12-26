class AddColumnToVotes < ActiveRecord::Migration[5.2]
  def change

    add_column :votes, :votable_id, :integer
     add_column :votes, :votable_type, :string
  end
end
