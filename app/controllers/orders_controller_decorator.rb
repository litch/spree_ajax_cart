Spree::OrdersController.class_eval do
  def add
    @order = current_order(true)
    @variant = Spree::Variant.find(params[:variant_id])
    
    @order.add_variant(@variant, 1)
    flash[:notice] = "Added #{@variant.name} to cart"

    respond_to do | format |
      format.js { render :action => 'edit' }  
    end
  end
  
end