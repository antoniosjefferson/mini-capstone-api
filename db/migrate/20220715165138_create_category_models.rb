class CreateCategoryModels < ActiveRecord::Migration[7.0]
  def change
    create_table :category_models do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps
    end
  end
end
