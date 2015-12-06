class SuppliersController < ApplicationController

  def new
    @supplier = Supplier.new
  end

  def index
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect "/suppliers/#{@supplier.id}"
    else
      render :new
    end
  end

  def edit
    @supplier = Supplier.find_by(id: params[:id])
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    if @supplier.update(supplier_params)
      redirect "/suppliers/#{@supplier.id}"
    else
      render :edit
    end
  end

  def destroy
    Supplier.find_by(id: params[:id]).update(active: false)
    redirect "/suppliers"
    
  end

end


private

  def supplier_params
    params.require(:supplier).permit(:first_name, :last_name, :email, :phone, :company_name)
  end


end 