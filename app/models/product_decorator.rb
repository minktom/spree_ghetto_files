Spree::Product.class_eval do
  has_and_belongs_to_many :downloadables, :join_table => :spree_downloadables_products
end