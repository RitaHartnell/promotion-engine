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
            product1 = "cheese"
            product2 = "milk"
            promo = Promotion.new(false, true, 2, 15)
            promo.add_product(product1)
            expect{promo.add_product(product2)} .to output("cannot add 2nd product to non combo promotion").to_stdout
        end
    end
    context " when is combo promo" do
        it "can add second product to the list" do
            product1 = "cheese"
            product2 = "milk"
            promo = Promotion.new(true, false, 30)
            promo.add_product(product1)
            promo.add_product(product2)
            expect(promo.products[1]).to eq("milk")
        end
    end
end

