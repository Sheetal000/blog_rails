class User < ApplicationRecord

  after_create_commit :log_user_saved_to_db
  after_update_commit :log_user_saved_to_db
  after_save_commit   :log_user_saved_to_db 

  private
  def log_user_saved_to_db
    puts 'this is empty'
  end
end
  # validates :login_email, presence: true
  # before_create do 
  #   self.login_email = login_email.capitalize
  # end
  # after_destroy :log_destroy_action



  # def log_destroy_action
  #   puts "Sheetal"
  # end
  # after_initialize do |user|
  #   puts "You have initialized an object!"
  # end

  # after_find do |user|
  #   puts "You have found an object!"
  # end



#   after_touch do |user|
#     puts "You have touched an object"
#   end
# end
