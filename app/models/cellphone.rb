class Cellphone < ActiveRecord::Base
  
  after_save :phone_change_notification, if: :reference_changed?

  
  belongs_to :user
  
  
  validates :reference, presence: true, presence: {message: "está vacio, ingresa una!"}
  validates_presence_of :os, :user_id
  validates_length_of :reference, :os, minimum: 3
  
  private
  def phone_change_notification
    UserDevices.phone_change(self).deliver
  end
  
end