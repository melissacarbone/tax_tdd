require 'rspec'
require_relative 'liability.rb'
require_relative 'employee.rb'
require_relative 'tax_calculator.rb'

describe Liability do
  employee = Employee.new("Liz", "Lemon", 0, 21000, 30)
  let(:liability) {Liability.new(employee, 21000, 0)}

  it 'has an attribute "employee" which is an instance of the Employee class' do
    expect(liability.employee).to be_an_instance_of(Employee)
  end

  it 'has an attribute "amount due" which represents taxes that employee must pay' do
    expect(liability.amount_due).to eql(0)
  end

  it 'has an attribute "amount owed" which represents refund due to employee' do
    expect(liability.amount_owed).to eql(21000)
  end
end
