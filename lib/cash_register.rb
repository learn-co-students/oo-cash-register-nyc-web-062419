require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item,price,quantity = 1)
        self.total += price * quantity
        quantity.times do 
            items << item
        end
        self.last_transaction = price * quantity 
    end

    def apply_discount
    #applies the discount to the total price
    #returns success message (string) with updated total (string interpolation)
    #current total * (100 - discount) / 100 
    @total = @total * (100 - @discount) / 100
    if @discount > 0
        "After the discount, the total comes to $#{@total}."
        else
        "There is no discount to apply."
    end
    #reduces the total
    #returns a string error message that there is no discount to apply
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end


end
