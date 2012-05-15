class Spree::Downloadable < ActiveRecord::Base

  attr_accessible :title, :attachment, :product_ids

  has_attached_file :attachment,
                    :url => "/spree/downloadables/:id/:basename.:extension",
                    :path => ":rails_root/public/spree/downloadables/:id/:basename.:extension"

  has_and_belongs_to_many :products, :join_table => :spree_downloadables_products

end
