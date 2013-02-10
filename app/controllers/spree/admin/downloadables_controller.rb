class Spree::Admin::DownloadablesController < Spree::Admin::ResourceController

  def index
    @downloadables = @downloadables.page(params[:page]).per(Spree::Config[:admin_products_per_page])
  end
end
