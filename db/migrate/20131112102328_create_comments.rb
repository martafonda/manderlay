class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string		:author
      t.text		:body
      t.references	:movie, index: true
      	
      t.timestamps
    end
  end
end
