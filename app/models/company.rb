# class Company < ApplicationRecord
class CoolValidator < ActiveModel::Validator
  def initialize company
    @company = company
  end

  def validate
    if some_complex_condition_involving_ivars_and_private_methods?
      @company.errors[:base] << "This person is evil"
    end
  end

  def some_complex_condition_involving_ivars_and_private_methods?
    @company.owner == 'Evil'
  end
end

class Company
  include ActiveModel::Validations

  attr_accessor :companynote, :owner

  def initialize companynote: nil, owner: nil
    @companynote = companynote
    @owner = owner
  end

  validate do |company|
    CoolValidator.new(company).validate
  end
end


company = Company.new companynote: '1 Dollar', owner: 'Evil'


# end
