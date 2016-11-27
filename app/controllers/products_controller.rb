class ProductsController < ApplicationController
  def index
  @products = Product.all
  end
  #Automatically load the app/views/products/index.html.erb

  def show
    @product = find_product
  end
  # Automatically load the app/views/products/show.html.erb

  def index
  @products = Product.all
  if params[:search]
    @products = Product.search(params[:search])
  end
end

  private

  def find_product
    Product.find(params[:id]) # Load product mentioned by id in the route.
  end
end
