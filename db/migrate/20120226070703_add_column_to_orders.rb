class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :get_time_begin, :time

    add_column :orders, :get_time_end, :time

  end
end
