require 'Product'
require 'Promotion'

RSpec.describe Product, "#initialize" do
    it "sucessfully creates a new product" do
        expect{ product = Product.new("parmesean", 10) }.not_to raise_error 
    end

    it "has the correct product name" do
        product = Product.new("parmesean", 10)
        expect(product.name).to eq("parmesean")
    end

    it "has the correct price" do
        product = Product.new("parmesean", 10)
        expect(product.price).to eq(10)
    end
end

RSpec.describe Product, "#add_promo" do
    context "adding a new combo promotion" do
        it "is able to create 1 new promotion for both products" do
            product1 = Product.new("parmesean", 10)
            product2 = Product.new("Peccerino Romano", 15)
            product1.add_promo(product2, 20)
            expect(product1.promotions.empty?).not_to eq(true)
        end
    end

    context "adding a new single promotion" do
        it "is able to create a new promotion for the product" do
        end
    end
end