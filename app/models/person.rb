class Person < ApplicationRecord
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
	validates :name, length: { maximum: 1000,
	too_long: "%{count} characters is the maximum allowed" }
  validates :last_name,length:{maximum:4}
  # validates :terms_of_service, acceptance: { message: 'must be abided' }
  # validates :terms_of_service, acceptance: { accept: 'yes' }
  # validates :eula, acceptance: { accept: ['TRUE', 'accepted'] }
end
