class Order < ApplicationRecord
  before_save :normalize_card_number,
   if: proc.new { paid_with_card? } 
  #  validates :card_number,presence:true,if: :paid_with_card? 
  # before_save :normalize_card_number, if: :paid_with_card?
end


  # def paid_with_card
  #   payment_type == "card"
  # end
# end