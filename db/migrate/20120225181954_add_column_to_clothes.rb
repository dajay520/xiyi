class AddColumnToClothes < ActiveRecord::Migration
  def change
    add_column :clothes, :get_time_begin, :time

    add_column :clothes, :get_time_end, :time

  end
end
