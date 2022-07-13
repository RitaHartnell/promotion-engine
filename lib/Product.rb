class Product
    def initialize(name, price)
        @name = name
        @price = price
        @promotions = []
    end

    
    def add_promo(*args)
        # either (Product, price) or (qualifying_amount, price)
        case args[0].is_a?(Product)
            when true
                #multi product promotion
            when false
                #single product promotion
        end
    end

end