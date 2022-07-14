class Promotion
    @@promotions = []

    def initialize(is_combo, needs_qualifying_amount, price, qualifying_amount = 0)
        @is_combo = is_combo
        @qualifying_amount = qualifying_amount
        @needs_qualifying_amount = needs_qualifying_amount
        @price = price
        @products = Array.new
        @@promotions << self
    end

    def add_product(product)
        if (!@is_combo)
            if (@products.length() == 1)
                raise "cannot add 2nd product to non combo promotion"
            else
                @products << product
            end
        else   
            @products << product
        end
    end

    def products
        @products
    end

    def qualifying_amount
        @qualifying_amount
    end

    def qualifies?(cart)
        if (!@is_combo)
            if (cart.products[@products[0]] >= @qualifying_amount)
                return true
            else
                return false
            end
        else
            if (cart.products[@products[0]] > 0 && cart.products[@products[1]] > 0)
                return true
            else
                return false
            end
        end
    end
end