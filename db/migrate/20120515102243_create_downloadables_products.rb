class CreateDownloadablesProducts < ActiveRecord::Migration
  def change
    create_table :spree_downloadables_products, :id => false do |t|
      t.references :downloadable
      t.references :product
    end
    add_index :spree_downloadables_products, [:downloadable_id, :product_id], :name => 'index_downloadable_products'
    add_index :spree_downloadables_products, [:product_id, :downloadable_id], :name => 'index_product_downloadables'
  end
end
