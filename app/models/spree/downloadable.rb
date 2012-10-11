class Spree::Downloadable < ActiveRecord::Base

  attr_accessible :title, :attachment, :product_ids

  has_and_belongs_to_many :products, :join_table => :spree_downloadables_products

  has_attached_file :attachment,
                    :url => "/spree/downloadables/:id/:basename.:extension",
                    :path => ":rails_root/public/spree/downloadables/:id/:basename.:extension"

  if Spree::Config[:use_s3]
    s3_creds = { :access_key_id => Spree::Config[:s3_access_key], :secret_access_key => Spree::Config[:s3_secret], :bucket => Spree::Config[:s3_bucket] }
    Spree::Downloadable.attachment_definitions[:attachment][:storage] = :s3
    Spree::Downloadable.attachment_definitions[:attachment][:s3_credentials] = s3_creds
    Spree::Downloadable.attachment_definitions[:attachment][:s3_headers] = ActiveSupport::JSON.decode(Spree::Config[:s3_headers])
    Spree::Downloadable.attachment_definitions[:attachment][:bucket] = Spree::Config[:s3_bucket]
    Spree::Downloadable.attachment_definitions[:attachment][:s3_protocol] = Spree::Config[:s3_protocol] unless Spree::Config[:s3_protocol].blank?
  end


end
