require 'rspec'
require_relative 'employee.rb'
require 'pry'

describe Employee do

  let(:johnny) { Employee.new('Johnny', 'Smith', '120000', '28000', '38')}
  let(:no_first_name) { Employee.new('', 'Orsillio', '40000', '8800', '18')}
  let(:no_last_name) { Employee.new('Mike', '', '40000', '8800', '18')}

  it 'should create an instance if all arguments are provided' do
    expect(johnny).to be_an_instance_of(Employee)
  end

  it 'should use an appropriate placeholder if first name is not provided' do
    expect(no_first_name.first_name).to eql('[First Name]')
  end

  it 'should use an appropriate placeholder if last name is not provided' do
    expect(no_last_name.last_name).to eql('[Last Name]')
  end

  it 'should use default value 0 if annual income is not provided' do
    expect(Employee.new('Liz', 'Lemon', '', '21000', '30').annual_income).to eql(0)
  end
  it 'should use default value 0 if tax paid is not provided' do
    expect(Employee.new('Eric', 'Schmidt', '54000', '', '28').tax_paid).to eql(0)
  end

  it 'should raise an error if a non-CSV file is provided' do
    expect{ Employee.read_file('employees.txt') }.to raise_error
  end

  it 'should read from a CSV file' do
    employees = Employee.read_file('tax_data.csv')
    expect(employees.count).to eql(5)
  end

end
