class Product
    def initialize(name, price)
        @name = name
        @price = price
        @promotions = []
    end

    def name
        @name
    end

    def price
        @price
    end

    def promotions
        @promotions
    end
    
    def add_promo(*args)
        # either (Product, price) or (qualifying_amount, price)
        case args[0].is_a?(Product)
            when true
                #multi product promotion
                second = args[0]
                price = args[1]
                promo = Promotion.new(true, false, price)
                promo.add_product(self)
                self.add_promo_helper(promo)
                promo.add_product(second)
                second.add_promo_helper(promo)
            when false
                #single product promotion
                price = args[1]
                qualifying_amount = args[0]
                promo = Promotion.new(false, true, qualifying_amount, price)
                self.add_promo_helper(promo)
        end
    end

    def add_promo_helper(promo)
        @promotions << promo
    end

end