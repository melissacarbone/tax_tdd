require 'rspec'
require_relative 'tax_calculator.rb'
require_relative 'employee.rb'
require_relative 'liability.rb'

describe TaxCalculator do

  let (:employee) { Employee.new('Johnny', 'Smith', '120000', '28000', '38') }

  it 'should have a method that returns a Liability object' do
    expect(TaxCalculator.liability(employee)).to be_an_instance_of(Liability)
  end
end
