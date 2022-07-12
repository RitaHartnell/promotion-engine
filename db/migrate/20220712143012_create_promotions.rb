class CreatePromotions < ActiveRecord::Migration[5.2]

  def change
      create_table :promotions do |t|
          t.boolean :is_combo
          t.boolean :needs_qualifying_amount
          t.integer :qualifying_amount
          t.float :price
      end
  end

end
