Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "downloadables_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:downloadables) %>")