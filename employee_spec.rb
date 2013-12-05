require 'rspec'
require_relative 'employee.rb'

describe Employee do

  let(:johnny) { Employee.new('Johnny', 'Smith', '120000', '28000', '38')}
  let(:no_first_name) { Employee.new('', 'Orsillio', '40000', '8800', '18')}
  let(:no_last_name) { Employee.new('Mike', '', '40000', '8800', '18')}

  it 'if all information is provided, an employee object is created' do
    expect(johnny).to be_an_instance_of(Employee)
  end

  it 'appropriate placeholder is used if first name is not provided' do
    expect(no_first_name.first_name).to eql('[First Name]')
  end

  it 'appropriate placeholder is used if last name is not provided' do
    expect(no_last_name.last_name).to eql('[Last Name]')
  end

  it 'value defaults to zero if annual income is not provided' do
    expect(Employee.new('Liz', 'Lemon', '', '21000', '30').annual_income).to eql(0)
  end
  it 'value defaults to zero if tax paid is not provided' do
    expect(Employee.new('Eric', 'Schmidt', '54000', '', '28').tax_paid).to eql(0)
  end
end