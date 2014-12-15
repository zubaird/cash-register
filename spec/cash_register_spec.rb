require 'cash_register'

describe CashRegister do

  describe "#total" do
    it 'starts at 0' do
      cash_register = CashRegister.new

      total = cash_register.total

      expect(total).to eq(0)
    end

    it "returns how much is owed when nothing is paid" do
      cash_register = CashRegister.new

      ammount_one = 30
      ammount_two = 20

      cash_register.purchase(ammount_one)
      cash_register.purchase(ammount_two)
      owed_ammount = cash_register.total

      expect(owed_ammount).to eq(50)
    end

  end

  describe "#purchase" do
    it "takes a floating number and adds it to the total" do
      cash_register = CashRegister.new

      cash_register.purchase(10.2)
      total = cash_register.total

      expect(total).to eq(10.2)
    end
  end

  describe "#pay" do
    it "takes a floating number for how much is paid, and returns how much is given." do
      cash_register = CashRegister.new

      cash_register.purchase(20.12)
      total = cash_register.pay(20.10)

      expect(total).to eq(0.02)

    end


  end

end



#
# The Cash Register class should allow you to pass an amount to the cash register, calculate your total,
# collect a payment and then return the balance after running through the program.
#
# There is a purchase method that takes a floating number and adds that to the total.
# There is a total method that returns how much is owed.
# There is a pay method that takes one floating number for how much is paid. It should return how much change is given.
# When the Cash Register is initialized is should begin with a starting balance of 0
