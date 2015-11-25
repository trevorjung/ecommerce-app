class OrdersController < ApplicationController

  def new
  end

  def create
    product = Product.find_by(id: params[:product_id])

    quantity = params[:quantity].to_i
    subtotal = product.price * quantity
    tax = product.tax * quantity
    total = tax + subtotal

    order = Order.create(user_id: current_user.id, product_id: product.id, quantity: quantity, subtotal: subtotal, tax: tax, total: total)

    flash[:success] = "Order Placed"
    redirect_to "/orders/#{order.id}"
  end

  def show
    id = params[:id]
    @order = Order.find_by(id: id)
  end
  

end
