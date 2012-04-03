class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :code
      t.time :begin_time
      t.time :end_time
      t.string :partner_id

      t.timestamps
    end
  end
end
