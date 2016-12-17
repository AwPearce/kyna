class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :item
      t.string :price
      t.string :description
    end
  end
end
