class ProductsController < ApplicationController

  before_action :set_product, only: [ :show, :edit, :update,  :destroy]
  respond_to :html, :xml, :json

  def index
    @cart = current_cart
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def new
    @product = Product.new
  end

  def create
  end

  def update
  end

  def destroy
  end





  private

  def set_product
    @category = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :image_url, :about_product, :ingredients, :category_id)
  end
end