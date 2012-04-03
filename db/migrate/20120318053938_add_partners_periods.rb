class AddPartnersPeriods < ActiveRecord::Migration
  def change
    create_table :partners_periods,:id=>false do |t|

      t.integer :partner_id
      t.integer :period_id

    end
  end

end
