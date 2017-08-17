class CartItem
  attr_reader :product_id
  attr_accessor :quantity

  def initialize(product_id, quantity = 1)
    @product_id = product_id
    @quantity = quantity
  end

  # def increment(n = 1)
  #   @quantity += n
  # end

  def increment(n = 1)
    @quantity += n
  end

  def product
    Product.find(product_id)
  end

  # def total_price(product)
  #   product.quantity * product.price
  # end
  def total_price
    product.price * quantity
  end

end
