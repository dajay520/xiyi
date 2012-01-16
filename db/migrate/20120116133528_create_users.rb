class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone
      t.string :address
      t.string :email
      t.string :name
      t.decimal :jifen
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
