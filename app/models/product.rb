class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: true
  # validates :price, numericality: { greater_than_or_equal_to: 1 }
  # validates :description, length: { in: 10..500 }
  has_many :orders
  belongs_to :supplier

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def images
    Image.where(product_id: id)
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    results = ""
    if price < 10
      results += "true"
    else
      results += "false"
    end
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end
end
