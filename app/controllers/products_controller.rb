class ProductsController < ApplicationController
  before_action :valley_forge!, only: [:create, :edit, :update, :destroy]
   

  def index
    @categories = Category.all
    if params[:view] == "discounted"
     @products = Product.where("price < ?", 50)
    elsif params[:view] == "Order by Price"
     @products = Product.order(:price)
    elsif params[:view] == "high_to_low"
     @products = Product.order(price: :DESC)
    elsif params[:category] 
     @products = Category.find_by(name: params[:category]).products
      
    else
      @products = Product.all

    end
  end

  def new
    if current_user && current_user.role.name == "admin"
      @product = Product.new
    else
      redirect_to "/"
    end
  end

  def create
   name = params[:name]
   price = params[:price]
   image = params[:image]
   description = params[:description]

   @product = Product.new(name: name, price: price, image: image, description: description, user_id: current_user.id)

   if @product.save
   flash[:success] = "Product Created"
   redirect_to "/products/#{product.id}" 
   else
    render :new
  end
 end 

  def show
    @product = Product.find_by(id: params[:id])
    @cartedproduct = CartedProduct.new
  end 

  def edit
     @product = Product.find_by(id: params[:id])
  end

  def update
    product = Product.find_by(id: params[:id])

    name = params[:name]
    price = params[:price]
    image = params[:image]
    description = params[:description]

    product.update(name: name, price: price, image: image, description: description)
    flash[:notice] = "Product Updated"

    redirect_to "/products/#{product.id}"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    flash[:danger] = "Product Destroyed, yah"
    redirect_to "/"
  end

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ? OR description LIKE ?", "#%{search_term}%","#%{search_term}%")
    render :index
  end

end
