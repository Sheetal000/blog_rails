class GoodnessValidator <ActiveModel::Validator
  def validate(record)
    # if record.first_name == "Evil"
     record.errors.add:base,"this person is evil"
    # end
  end
end

class Custom < ApplicationRecord
	validates_with GoodnessValidator
end
