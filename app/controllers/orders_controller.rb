class OrdersController < ApplicationController
  def create
    if current_user
      order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
      order.save
      render json: order.as_json
    else
      render json: []

  end
end