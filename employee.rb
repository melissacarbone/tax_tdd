require 'csv'

class Employee
  attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate

  def initialize(first_name, last_name, annual_income, tax_paid, tax_rate)
    if first_name == nil
      @first_name = '[First Name]'
    else
      @first_name = first_name
    end

    if last_name == nil
      @last_name = '[Last Name]'
    else
      @last_name = last_name
    end

    if annual_income == nil
      @annual_income = 0
    else
      @annual_income = annual_income.to_i
    end

    if tax_paid == nil
      @tax_paid = 0
    else
      @tax_paid = tax_paid.to_i
    end

    @tax_rate = tax_rate
  end

  def self.read_file(filename)
    if filename.end_with?('csv')
      employees = []
      CSV.foreach(filename, headers: true) do |row|
        employees << Employee.new(row[0], row[1], row[2], row[3], row[4])
      end
    else
      raise "must provide a CSV file"
    end
    employees
  end

end
