require 'promotion'

RSpec.describe Promotion, "#qualifying_amount" do
    context "with no given" do
        it "defaults to 0" do
            promo = Promotion.new(true, false, 30)
            expect(promo.qualifying_amount).to eq(0)
        end
    end
end 