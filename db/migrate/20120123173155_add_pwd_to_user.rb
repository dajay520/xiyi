class AddPwdToUser < ActiveRecord::Migration
  def change
    add_column :users, :pwd, :string

  end
end
