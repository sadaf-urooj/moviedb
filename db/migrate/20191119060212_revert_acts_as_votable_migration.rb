class RevertActsAsVotableMigration < ActiveRecord::Migration[5.2]
  require_relative '20191115075503_acts_as_votable_migration'

  def change
    revert(ActsAsVotableMigration)
  end
end
