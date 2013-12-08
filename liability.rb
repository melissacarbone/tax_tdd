require_relative 'employee.rb'
require_relative 'tax_calculator.rb'

class Liability
  attr_reader :employee, :amount_due, :amount_owed

  def initialize(employee, amount_owed, amount_due)

    @employee = employee
    @amount_due = amount_due
    @amount_owed = amount_owed

  end

end
