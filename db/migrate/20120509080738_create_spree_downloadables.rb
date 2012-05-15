class CreateSpreeDownloadables < ActiveRecord::Migration
  def change
    create_table :spree_downloadables do |t|
      t.string   :title
      t.string   :attachment_file_name
      t.string   :attachment_content_type
      t.integer  :attachment_file_size
      t.datetime :attachment_updated_at
      t.timestamps
    end
  end
end
