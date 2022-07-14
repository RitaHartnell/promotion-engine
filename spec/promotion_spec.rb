require 'Promotion'

RSpec.describe Promotion, "#qualifying_amount" do
    context "with no given" do
        it "defaults to 0" do
            promo = Promotion.new(true, false, 30)
            expect(promo.qualifying_amount).to eq(0)
        end
    end
end 

RSpec.describe Promotion, "#add_product" do
    it "successfully adds a product" do
        product = Product.new("cheese", 5)
        promo = Promotion.new(false, true, 2, 8)
        promo.add_product(product)
        expect(promo.products[0].name).to eq("cheese")
    end
    context " when not combo promotion" do
        #TODO - implement product - DONE
        #TODO - implement check fr product existing in non combo promo - DONE
        it "checks if there is already a product and returns an error message if so" do
            product1 = Product.new("cheese", 5)
            product2 = Product.new("milk", 3)
            promo = Promotion.new(false, true, 2, 15)
            promo.add_product(product1)
            expect{promo.add_product(product2)} .to raise_error("cannot add 2nd product to non combo promotion")
        end
    end
    context " when is combo promo" do
        it "can add second product to the list" do
            product1 = Product.new("cheese", 5)
            product2 = Product.new("milk", 3)
            promo = Promotion.new(true, false, 6)
            promo.add_product(product1)
            promo.add_product(product2)
            expect(promo.products[1].name).to eq("milk")
        end
    end
end

RSpec.describe Promotion, "#qualifies?" do
    #TODO - implement cart - DONE
    #TODO - implement product - DONE
    context "when not combo promo" do
        it "checks cart for correct quantity and returns false if less than the amount" do
            product = Product.new("cheese", 5)
            cart = Cart.new()
            cart.add_to_cart(product, 1)
            promo = Promotion.new(false, true, 2, 8)
            promo.add_product(product)
            expect(promo.qualifies?(cart)).to eq(false)
        end
    end

    context "when is combo promo" do
        it "checks cart to make sure both items are present and returns true if so" do
            product1 = Product.new("cheese", 5)
            product2 = Product.new("milk", 3)
            promo = Promotion.new(true, false, 6)
            cart = Cart.new()
            cart.add_to_cart(product1, 1)
            cart.add_to_cart(product2, 1)
            promo.add_product(product1)
            promo.add_product(product2)
            expect(promo.qualifies?(cart)).to eq(true)
        end
    end
end

