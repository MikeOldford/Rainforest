class ProductsController < ApplicationController

  #GET products
  def index
    @products = Product.all
  end

  #GET products/1
  def show
    @product = Product.find(params[:id])
  end

  #GET products/new
  def new
    @product = Product.new
  end

  #POST products
  def create
    @product = Product.new(params[:product])
      if @product.save
        #redirect (move the browser) to /product/#{@product.id}
          redirect_to @product, notice: 'Product created successfully.'
      else
        #just show the new action's view
        render action: :new
      end
  end

  #GET products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  #PUT products/1
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product, notice: 'successfully updated.'
    else
      render action: :edit
    end
  end

  #DELETE product
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  

  
end
