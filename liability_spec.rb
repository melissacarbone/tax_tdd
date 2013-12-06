require 'rspec'
require_relative 'liability.rb'
require_relative 'employee.rb'

describe Liability do

  let (:employee) { Employee.new('Johnny', 'Smith', '120000', '28000', '38') }
  let (:liability) { Liability.new(employee) }

  it 'should allow access to an Employee object' do
    expect(liability.employee).to be_an_instance_of(Employee)
  end
end
