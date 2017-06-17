class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.string :origin
      t.integer :msrp_cents

      t.timestamps
    end
  end
end
