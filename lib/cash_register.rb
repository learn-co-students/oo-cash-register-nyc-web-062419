require 'pry'
class CashRegister
    
    attr_reader :items, :discount
    attr_accessor :total

    def initialize (discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        @total += price * quantity
        @last_price = price * quantity
        while quantity > 0 
            @items << item
            quantity -=1
        end
    end
    
    def apply_discount
       
        if @discount != nil
            
            @total *= (100 - discount) / 100.0
            "After the discount, the total comes to $#{@total.round.to_s}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_price
        @items.pop
    end

end
