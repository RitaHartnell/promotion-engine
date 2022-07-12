class CreateJoinTableProductsPromotions < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :promotions do |t|
    # t.index [:student_id, :course_id]
    # t.index [:course_id, :student_id]
    end
  end
end
