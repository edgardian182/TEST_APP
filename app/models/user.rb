class User < ActiveRecord::Base
  
  has_many :cellphones, dependent: :destroy
  before_save {self.email = email.downcase}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :username, presence: true, length: {minimum: 3}
  validates :email, presence:true, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}, length: {maximum:105} 

  has_secure_password


  

end
