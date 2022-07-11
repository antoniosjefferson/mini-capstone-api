class SuppliersController < ApplicationController
  def index
    suppliers = Suppliers.all
    render json: suppliers.as_json
  end
end
