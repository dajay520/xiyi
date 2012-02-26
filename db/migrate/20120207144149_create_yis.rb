class CreateYis < ActiveRecord::Migration
  def change
    create_table :yis do |t|
      t.string :name
      t.string :img_url
      t.integer :type
      t.integer :price
      t.date  :create_time
      t.date  :stop_time
      t.timestamps
    end
    #add_column :events ,:id,:integer
    #add_index :events,:id
  end
end
