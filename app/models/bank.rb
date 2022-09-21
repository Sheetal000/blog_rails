class Bank < ApplicationRecord
    validates_each :name,:surname do |record,attr,value|
        record.errors.add(attr,"must  start with upper case") if value = /\A[[:lower:]]/
    end
end
