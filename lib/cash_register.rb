require 'pry'

class CashRegister
    attr_accessor :total, :discount, :total, :last_trans, :items
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total += (quantity*price)
        range = 1..quantity
        for i in range
            @items << title
        end
        @last_trans = quantity*price
    end

    def apply_discount
        if @discount != 0
            #Apply Discount
            @total -= @total * @discount / 100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    

    def void_last_transaction
        @total -= @last_trans
    end
end
