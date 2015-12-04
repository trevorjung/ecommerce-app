class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    to_buy_products = CartedProduct.where(user_id: current_user.id, status: 'carted')

    
    subtotal = calculate_subtotal(to_buy_products)
    tax = calculate_tax(to_buy_products)
    total = tax + subtotal

    @order = Order.new(user_id: current_user.id, subtotal: subtotal, tax: tax, total: total)
      
    
    if @order.save
      session[:checkout_count] = nil
      to_buy_products.update_all(status: "purchased", order_id: @order.id)
      flash[:success] = "Checkout Completed"
      redirect_to "/orders/#{@order.id}"
    else 
      render template: "cartedproducts/index"
    end

  end

  def show
    id = params[:id]
    @order = Order.find_by(id: id)
  end
  

end
