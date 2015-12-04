class CartedProductsController < ApplicationController

  def index
   if current_user.carted_products.where(status: "carted").any? 
   @carted_products = current_user.carted_products.where(status: 'carted')
   @subtotal = calculate_subtotal(@carted_products)
   @tax = calculate_tax(@carted_products)
   @total = @subtotal + @tax
   else
    redirect_to "/"
   end 

  end


  def create
   @product = Product.find_by(id: params[:product_id])

   @carted_product = CartedProduct.new(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], status: "carted" )

    if @carted_product.save
       session[:checkout_count] += 1
       flash[:success] = "#{@product.name}(s) Saved to Cart"
       redirect_to "/products" 
    else
       render template: "products/show"
    end
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"

    if carted_product.save
      flash[:warning] = "#{carted_product.quantity} #{carted_product.product.name}(s) removed from cart."
    else
      flash[:danger] = "Product not removed from cart!"
    end
    redirect_to "/carted_products"
  end




end 
