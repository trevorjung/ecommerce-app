class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
  end

  def create
   name = params[:name]
   price = params[:price]
   image = params[:image]
   description = params[:description]

   product = Product.create(name: name, price: price, image: image, description: description)
   flash[:success] = "Product Created, let's go"
   redirect_to "/products/#{product.id}" 
 
  end 

  def show
    id = params[:id]
    @product = Product.find_by(id: id)
  end 

  def edit
    id = params[:id]
     @product = Product.find_by(id: id)
  end

  def update
    id = params[:id]
    product = Product.find_by(id: id)

    name = params[:name]
    price = params[:price]
    image = params[:image]
    description = params[:description]

    product.update(name: name, price: price, image: image, description: description)
    flash[:notice] = "Product Updated"

    redirect_to "/products/#{product.id}"
  end

  def destroy
    id = params[:id]
    product = Product.find_by(id: id)
    product.destroy
    flash[:danger] = "Product Destroyed, yah"
    redirect_to "/"
  end

end
