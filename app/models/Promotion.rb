class Promotion < ActiveRecord::Base
    has_and_belongs_to_many :products

    def create (is_combo, has_qualifying_amount, qualifying_amount = 0, price)
        this.is_combo = is_combo
        this.has_qualifying_amount = has_qualifying_amount
        this.qualifying_amount = qualifying_amount
        this.price = price
    end

    def add_product (product)
        this.products << product
    end
    
end