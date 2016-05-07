class Cellphone < ActiveRecord::Base
  
  belongs_to :user
  
  validates_presence_of :reference, :os, :user_id
  validates_length_of :reference, :os, minimum: 3
  
end