class ProductsController < ApplicationController
  def index
  @products = Product.all
  end
   #Automatically load the app/views/products/index.html.erb
end
