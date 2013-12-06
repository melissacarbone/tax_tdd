require 'rspec'
require_relative 'employee.rb'

describe Employee do

  it 'should create an employee object if all information is provided' do
    expect(Employee.new('Johnny', 'Smith', '120000', '28000', '38')).to \
    be_an_instance_of(Employee)
  end

  it 'should use a placeholder if first name is not provided' do
    expect(Employee.new('', 'Orsillio', '40000', '8800', '18').first_name).to \
    eql('[First Name]')
  end

  it 'should use a placeholder if last name is not provided' do
    expect(Employee.new('Mike', '', '40000', '8800', '18').last_name).to \
    eql('[Last Name]')
  end

  it 'should use zero if annual income is not provided' do
    expect(Employee.new('Liz', 'Lemon', '', '21000', '30').annual_income).to \
    eql(0)
  end
  it 'should use zero if tax paid is not provided' do
    expect(Employee.new('Eric', 'Schmidt', '54000', '', '28').tax_paid).to \
    eql(0)
  end

  it 'should raise an error if a non-CSV file is provided' do
    expect{ Employee.read_file('employees.txt') }.to raise_error
  end

  it 'should read from a CSV file' do
    employees = Employee.read_file('tax_data.csv')
    expect(employees.count).to eql(5)
  end

  it 'should create employee objects from the CSV file' do
    employees = Employee.read_file('tax_data.csv')
    expect(employees[0].first_name).to eql('Johnny')
  end
end
