class Product < ApplicationRecord
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
