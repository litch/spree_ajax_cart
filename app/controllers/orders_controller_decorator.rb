Spree::OrdersController.class_eval do
  def add
    @order = current_order(true)
    @variant = Spree::Variant.find(params[:variant_id])
    
    @order.add_variant(@variant, 1)

    respond_to do | format |
      format.js { render :action => 'edit.js.erb' }  
    end
  end
  
  def remove
    @order = current_order(true)
    @variant = Spree::Variant.find(params[:variant_id])
    
    @order.add_variant(@variant, -1)

    respond_to do | format |
      format.js { render :action => 'edit.js.erb' }  
    end
  end
  
end