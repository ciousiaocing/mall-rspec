require 'rails_helper'

RSpec.describe CartItem, type: :model do
  it "每個 Cart Item 都可以計算它自己的金額(小計)" do
    cart = Cart.new

    p1 = Product.create(title: "p1", price: 10)
    p2 = Product.create(title: "p2", price: 100)

    3.times { cart.add_item(p1.id) }
    5.times { cart.add_item(p2.id) }
    2.times { cart.add_item(p1.id) }

    expect(cart.items.first.total_price).to eq 50
    expect(cart.items.last.total_price).to eq 500
  end
end
