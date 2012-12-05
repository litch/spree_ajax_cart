Rails.application.routes.draw do
  match '/cart/add/(:variant_id)',  :to => 'spree/orders#add',        :via => :put
  match '/ajax_cart',               :to => 'spree/orders#ajax_cart',  :via => :get
end
