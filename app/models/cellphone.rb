class Cellphone < ActiveRecord::Base
  
  belongs_to :user
  
  validates :reference, presence: true, presence: {message: "está vacio, ingresa una!"}
  validates_presence_of :os, :user_id
  validates_length_of :reference, :os, minimum: 3
  
end