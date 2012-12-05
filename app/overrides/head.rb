Deface::Override.new(:virtual_path => Spree::Config[:layout],
                     :name => "add_ajax_cart_head",
                     :insert_bottom => "head",
                     :partial => "shared/ajax_cart_head")
