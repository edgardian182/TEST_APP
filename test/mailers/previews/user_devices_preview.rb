# Preview all emails at http://localhost:3000/rails/mailers/user_devices
class UserDevicesPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_devices/phone_change
  def phone_change
    UserDevices.phone_change
  end

end
