class RenameTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :tables, :coupons
  end
end
