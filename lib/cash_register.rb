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


input = ""

cash_register = CashRegister.new

while input != "quit"
  puts "type 'quit' to exit, or use the cash_register: 'purchase (num)', 'pay (num)', 'total'"
  input = gets.chomp
  break if input == "quit"

  if input.include? "purchase"
    match_data = input.match(/[0-9.]+/)
    value = match_data.to_a.slice(0).to_f
    cash_register.purchase(value)
  end

  if input.include? "pay"
    match_data = input.match(/[0-9.]+/)
    value = match_data.to_a.slice(0).to_f
    cash_register.pay(value)
  end

  if input.include? "total"
    puts cash_register.total
  end

end
