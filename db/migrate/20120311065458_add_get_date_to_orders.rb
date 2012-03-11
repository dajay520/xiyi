class AddGetDateToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :get_date, :datetime

  end
end
