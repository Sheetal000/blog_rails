class Result < ApplicationRecord
   validates :token, presence: {strict:true} 
end
