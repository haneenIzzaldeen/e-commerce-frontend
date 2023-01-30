class CreateProductCategory < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories do |t|
      t.references :category, null: true, foreign_key: true, foreign_key: {on_delete: :cascade}
      t.references :product, null: true, foreign_key: true, foreign_key: {on_delete: :cascade}
      t.timestamps
    end
  end
end
