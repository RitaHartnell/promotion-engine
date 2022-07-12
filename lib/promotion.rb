class Promotion
    def initialize(is_combo, needs_qualifying_amount, price, qualifying_amount = 0)
        @is_combo = is_combo
        @qualifying_amount = qualifying_amount
        @needs_qualifying_amount = needs_qualifying_amount
        @price = price
        @products = Array.new
    end

    def add_product(product)
        @products << product
    end

    def products
        @products
    end

    def qualifying_amount
        @qualifying_amount
    end
end