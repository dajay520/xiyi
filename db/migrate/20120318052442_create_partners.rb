class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :en_name
      t.integer :period_id

      t.timestamps
    end
  end
end
