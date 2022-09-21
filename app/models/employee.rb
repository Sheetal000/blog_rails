class Employee < ApplicationRecord
    validate do |employee|
      BadnessValidator.new(employee).validate
    end
end
class BadnessValidator
  def initialize(employee)
    @employee = employee
  end

  def validate
    if some_complex_condition_involving_ivars_and_private_methods?
      @employee.errors.add:base,"this employee is bad"
    end
  end
  def some_complex_condition_involving_ivars_and_private_methods?
    @employee = "Evil"
   end
end
