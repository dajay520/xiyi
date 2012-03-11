class CreateTableRole < ActiveRecord::Migration

  def change
    create_table :roles do |t|
      t.string :type
      t.string :name
      t.string :email

      t.timestamps
    end
  end

end
