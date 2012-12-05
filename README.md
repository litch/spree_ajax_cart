Spree Ajax Cart
=============

This is a basic implementation of an Ajax shopping cart for Spree (tested on 1.2.2). To install, add the extension to your Gemfile:

    gem 'spree_ajax_cart', :git => 'git://github.com/litch/spree_ajax_cart'


Use the `cart/add` route to make easy ajax links. Here's a simple haml template that will add it remotely:

    =link_to "+ Add to cart", "/cart/add/#{product.master.id}", :remote => true, :method => :put, :class => 'btn btn-primary pull-right'

You can also remove items:

    =link_to "- Remove 1 from cart", "/cart/remove/#{product.master.id}", :remote => true, :method => :put, :class => 'btn btn-primary pull-right'


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
