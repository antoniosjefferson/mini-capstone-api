class RenameCategoryModelsToCategoryProducts < ActiveRecord::Migration[7.0]
  def self.up
    rename_table :category_models, :category_products
  end

  def self.down
    rename_table :category_products, :category_models
  end
end
