class CreateClothes < ActiveRecord::Migration
  def change
    create_table :clothes do |t|
      t.string :name
      t.text :image_url
      t.string :type
      t.integer :price
      t.date :create_date
      t.date :stop_date

      t.timestamps
    end
  end
end
