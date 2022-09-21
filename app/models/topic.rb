class Topic < ApplicationRecord
 validates :title, length: {is: 6},allow_blank:true   
end
