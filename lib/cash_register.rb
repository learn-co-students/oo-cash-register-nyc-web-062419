require 'pry'
require 'byebug'

class CashRegister

	attr_accessor :total, :discount, :title, :price
	

	def initialize(total = 0)
		@total = total
		@discount = 20
	end

	# def add_item(title, price)
	# 	@title = title
	# 	@price = price

	# end

	# def add_item(title, price, quantity = "".to_i)
	# 	@total = total + price.to_i
	# 	@total
	# end

	


end

