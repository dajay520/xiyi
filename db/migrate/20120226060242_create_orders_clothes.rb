class CreateOrdersClothes < ActiveRecord::Migration


  def change
    create_table :clothes_orders,:id=>false do |t|

      t.integer :order_id
      t.integer :clothe_id

    end
  end


end
