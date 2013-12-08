require 'rspec'
require_relative 'tax_calculator.rb'
require_relative 'employee.rb'
require_relative 'liability.rb'
require 'pry'

describe TaxCalculator do

  it 'should return an instance of the Liability class' do
    employee = Employee.new("Liz", "Lemon", 0, 21000, 30)
    amount_owed = 0
    amount_due = 21000

    expect(TaxCalculator.liability(employee)).to be_an_instance_of(Liability)

  end
end
