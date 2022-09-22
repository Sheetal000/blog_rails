class House < ApplicationRecord
  validates :room, :size,presence:true
  before_validation :ensure_size_has_a_value

  private
  def ensure_size_has_a_value
    if size.nil?
      self.size = room unless room.blank?
    end
  end
end
