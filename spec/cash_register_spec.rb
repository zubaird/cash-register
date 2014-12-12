require 'cash_register'

describe CashRegister do
  describe "#total" do
    it 'starts at 0' do
      cash_register = CashRegister.new

      total = cash_register.total

      expect(total).to eq(0)
    end
  end
end
