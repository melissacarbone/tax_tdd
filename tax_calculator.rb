require_relative 'employee.rb'
require_relative 'liability.rb'
require 'pry'

class TaxCalculator

  def self.liability(employee)
    amount = self.refund_due(employee)
    if self.refund_due(employee) > 0
      amount_due = 0
      amount_owed = amount
    else
      amount_due = amount.abs
      amount_owed = 0
    end
    Liability.new(employee, amount_due, amount_owed)
  end

private
  def self.tax_owed(employee)
    (employee.annual_income)*((employee.tax_rate).to_i)/100
  end

  def self.refund_due(employee)
    employee.tax_paid.to_i - self.tax_owed(employee)
  end
end








