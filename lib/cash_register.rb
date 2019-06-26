class CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @basket = []
        @last_transaction = 0
    end
    def add_item(title,price,quantity=1)
        @total += price * quantity
        @basket += [title] * quantity
        @last_transaction += price * quantity
    end
    def apply_discount
        @total = total - (total * (discount / 100.00))
        if discount != 0
            "After the discount, the total comes to $#{@total.to_i}."
        else 
            "There is no discount to apply."
        end
    end
    def items
        @basket
    end
    def void_last_transaction
        @basket.pop
        @total -= @last_transaction
    end
end
