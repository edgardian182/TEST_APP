class Cellphone < ActiveRecord::Base
  
  validates_presence_of :reference
  
end