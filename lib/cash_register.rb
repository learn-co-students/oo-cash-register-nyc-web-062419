class CashRegister
    attr_accessor :total,:discount,:items


    def initialize (discount =false)
        @total = 0
        @discount = discount
        @items = []
    end
    def  add_item title,price, quantity = 1
        @total += (price * quantity)
        @last_item_price = price
        quantity.times {@items << title}
    end
    def apply_discount
        if @discount
            @total = (@total * 0.80)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    def void_last_transaction
        @total -=  @last_item_price
    end

end
