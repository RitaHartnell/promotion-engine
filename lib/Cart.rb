class Cart
    def initialize
        @products = Hash.new(0)
    end

    def add_to_cart(product, quantity)
        @products[product] = quantity
    end

    def products
        @products
    end
    
end