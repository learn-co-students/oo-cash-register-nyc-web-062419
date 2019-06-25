

class CashRegister

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @transactions = []
    end

    attr_accessor :discount

    attr_accessor :total 
    
    def items
        @items
    end

    def add_item(title, price, quantity=1)
        @total += price.to_f * quantity
        (0...quantity).each do
            @items << title
        end
        @transactions << [title, price, quantity]
    end

    def apply_discount

        if @discount == 0
            "There is no discount to apply."
        else
            @total *= ((100.0 - @discount.to_f)/100.0).round(2)
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def void_last_transaction
        last = @transactions.pop
        @total -= last[1] * last[2]
        (0...last[2]).each do
            @items.pop
        end

    end

end