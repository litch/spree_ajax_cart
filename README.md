Spree Ajax Cart
=============

This is a basic implementation of an Ajax shopping cart for Spree (tested on 1.2.2). To install, add the extension to your Gemfile:

    gem 'spree_ajax_cart', :git => 'git://github.com/litch/spree_ajax_cart'

Then to render an ajax cart from any view, simply:

    render :partial => 'orders/ajax_cart', :locals => {:order => current_order(true) }

Use the `add_to_cart` route to easy ajax links. Here's a simple ERB template that will render an ajax cart and a list of all your products with ajax add to cart links:

    <%= render :partial => 'orders/ajax_cart', :locals => {:order => current_order(true) } %>
    <ul>
      <% @products.each do |product| %>
        <li><%= link_to product.name, add_to_cart_path(:variant_id => product.master.id), :remote => true, :method => :put %></li>
      <% end %>
    </ul>

Click one of the links and the cart will update

Depends on a helper method that displays flash messages.  For a bootstrap view:
    
    def flash_display
        bootstrap_names = {:success => 'success', :error => 'error', :message => 'info', :notice => 'info'}
        response = ""
        flash.each do |name, msg|
            response = response + content_tag(:div, :class => "alert alert-#{bootstrap_names[name]}") do
                ("" + msg.to_s + " <a class='close' data-dismiss='alert' href='#'>&times;</a>").html_safe
            end
        end
        flash.discard
        response
    end

Copyright
-------------

Copyright (c) 2012 litch. See LICENSE.txt for further details.
