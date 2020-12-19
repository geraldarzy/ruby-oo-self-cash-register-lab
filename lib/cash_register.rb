class CashRegister
    
attr_accessor :total, :discount
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_trans= 0
    end
    def add_item (title, price, quantity=1)
        @total += price * quantity
        quantity.times do
            @items << title
        end
        @last_trans = price * quantity
    end

    def apply_discount
        if @discount > 0
            self.total = @total - (@total * (@discount.to_f / 100.0))
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
            

        end
        

    end

def items
return @items

end
    def void_last_transaction
        @total -= @last_trans


    end


end
