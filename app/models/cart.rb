class Cart
  attr_reader :items
  # getter
  # def items
  #   @items
  # end

  def initialize
    # @items = items
    @items = []
    # [CartItem.new(1, 3), CartItem.new(2, 4)]
    # [1, 2]
    # @items.first.product
    # @items.last.product 就叫不到CartItem的product方法
  end

  def add_item(product_id)
    # @items << items
    found_item = @items.find { |item|
      item.product_id == product_id
    }

    if found_item
      # found_item.quantity += 1
      found_item.increment
    else
      @items << product_id
    end
  end

  def empty?
    @items.empty?
  end

  def total_price
    @items.reduce(0) { |sum, item| sum + item.total_price }
  end
end
