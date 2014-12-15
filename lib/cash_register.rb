class CashRegister

  attr_accessor :total

  def initialize
    @total = 0
  end

  def purchase(number)
    @total += number
  end


  def pay(number)
    @total -= number.to_f
    @total.round(2)
  end

end
