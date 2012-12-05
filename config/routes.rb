Rails.application.routes.draw do
  match '/cart/add/(:variant_id)',    :to => 'spree/orders#add',        :via => :put
  match '/cart/remove/(:variant_id)', :to => 'spree/orders#remove',     :via => :put
end
