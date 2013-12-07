require_relative 'employee.rb'
require_relative 'liability.rb'

class TaxCalculator

  def self.liability(employee)
    amount_owed = 0
    amount_due = 21000
    Liability.new(employee, amount_due, amount_owed)
  end

end

