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
    context "not combo promotion" do
        #TODO - implement product
        #TODO - implement check for product existing in non combo promo
        it "successfully adds a product" do
            product = "cheese"
            promo = Promotion.new(false, true, 2, 15)
            promo.add_product(product)
            expect(promo.products[0]).to eq("cheese")
        end

        it "checks if there is already a product and returns an error message if so" do
            product1 = "cheese"
            product2 = "milk"
            promo = Promotion.new(false, true, 2, 15)
            promo.add_product(product1)
            expect{promo.add_product(product2)} .to output("cannot add 2nd product to non combo promotion").to_stdout
        end

    end
end