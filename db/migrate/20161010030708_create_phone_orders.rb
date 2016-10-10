class CreatePhoneOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_orders do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
