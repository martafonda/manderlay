class AddIndexToCast < ActiveRecord::Migration
  def change
    add_index :casts, [:movie_id, :person_id, :role], :unique => true
  end
end
