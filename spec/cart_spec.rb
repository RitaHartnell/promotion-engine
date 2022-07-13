require 'Cart'
require 'Promotion'
require 'Product'

RSpec.describe Cart, "#qualifies?" do
    #TODO - implement cart
    #TODO - implement product
    context "when not combo promo" do
        it "checks cart for correct quantity and returns false is less than the amount" do
            product = ["cheese", 20]
            cart = []
            cart << product
            promo = Promotion.new(false, true, 2, 30)
            promo.add_product(product)
            expect(promo.qualifies?).to eq(false)
        end
    end
end
