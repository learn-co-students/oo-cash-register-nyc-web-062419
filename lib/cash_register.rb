require 'pry'
require 'byebug'

class CashRegister

	attr_accessor :total, :discount, :items, :last_price

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
		@last_price = last_price
	end

	def add_item(title, price, quantity = 1)
	
		@total = total + price * quantity
		quantity.times do 
			@items << title
		end
		@last_price = price
	end

	def apply_discount
		@total = total - total * discount/100 
		if discount == 0 
			"There is no discount to apply."
		else
			"After the discount, the total comes to $#{total}."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@total = total - last_price
	end

end

