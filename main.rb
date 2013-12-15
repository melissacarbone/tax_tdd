require_relative 'employee.rb'
require_relative 'liability.rb'
require_relative 'tax_calculator.rb'

employees = Employee.read_file('tax_data.csv')

employees.each do |employee|
  liability = TaxCalculator.liability(employee)
    if liability.amount_due > 0
    puts "#{employee.first_name} #{employee.last_name} will receive a refund of #{liability.amount_due}."
    else
    puts "#{employee.first_name} #{employee.last_name} has a tax liability of #{liability.amount_owed}."
    end

  end
