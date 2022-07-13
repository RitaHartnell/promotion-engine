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