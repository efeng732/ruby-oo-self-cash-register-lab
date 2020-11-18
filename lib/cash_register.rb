class CashRegister
    attr_accessor :discount, :total 
def initialize (discount = 0)
    @total = 0
    @discount = discount
    @cart = []

end 


def add_item (title, price, quantity =1 )
    item = {}
    item[:name] = title 
    item[:price] = price
    item[:quantity] = quantity 
    @cart << item 
    @total += price * quantity 

end 

def apply_discount
    if @discount > 0
     @discount = @discount/100.to_f
     @total = @total - @total*@discount
     "After the discount, the total comes to $#{@total.to_i}."
    else
        "There is no discount to apply."
    end 

end 

def items 
    new_array = []
    @cart.each do |item| 
        for i in 1..item[:quantity]
        new_array << item[:name]
    end 
end 
new_array

end 

def void_last_transaction 
    if @cart.length == 1
        @total = 0.0
    else 
    @total = @total -@cart.last[:price]
    end 

end 

end 




