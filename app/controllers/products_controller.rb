class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :increment_visit_count, only: [:index]
  before_action :load_products_to_call, only: [:index]

  def index
    if params[:search]
      @products = Product.search(params[:search])
    # elseif params[:category]
    #   @products = Product.search(params[:category])
    else
      @products = Product.all
    end
  end
  #Automatically load the app/views/products/index.html.erb

  def sort_by_category
    @category = Category.find(params[:id])

    @products = @category.products
  end

  def remember_to_call
    id = params[:id].to_i
    session[:products_to_call] << id unless session[:products_to_call].include?(id)
    redirect_to root_url, notice: "Successfully added product to cart."
  end

  def mark_as_called
    id = params[:id].to_i
    session[:products_to_call].delete(id)

    redirect_to root_url
  end

  def mark_all_as_called
    session[:products_to_call] = []
    redirect_to root_url
  end

  def show
    @product = find_product
  end
  # Automatically load the app/views/products/show.html.erb

  private

  def initialize_session
    session[:visit_count] ||= 0
    session[:products_to_call] ||= []
  end

  def increment_visit_count
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end

  def load_products_to_call
    @products_to_call = Product.find(session[:products_to_call])
  end

  def find_product
    Product.find(params[:id]) # Load product mentioned by id in the route.
  end
end
