# want to be able to create promotions, add products
require 'rails_helper'


RSpec.describe Promotion, :type => :model do
    describe "#qualifying_amount" do
        it "has a default value of 0" do
            promo = Promotion.create(true, false, 30)
            expect promo.qualifying_amount to eq(0)
        end
    end 
end