class ProductsController < ApplicationController
  def index
  	@products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
  	@order_item = @order.order_items.find(params[:id])
  end
end
