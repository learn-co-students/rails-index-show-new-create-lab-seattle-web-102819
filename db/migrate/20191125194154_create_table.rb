class CreateTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :coupon_code
      t.string :store
    end
  end
end
