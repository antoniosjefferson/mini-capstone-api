class CartedProductsController < ApplicationController
  def create
    carted_products = CartedProduct.new(
      id: params[:id],
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id],
    )
    if carted_products.save #happy path
      render json: carted_products.as_json
    else # sad path
      render json: { errors: carted_products.errors.full_messages },
             status: 418
    end
  end
end
