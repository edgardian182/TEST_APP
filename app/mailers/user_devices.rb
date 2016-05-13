class UserDevices < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_devices.phone_change.subject
  #
  def phone_change(cellphone)
    @cellphone = cellphone
    @user = @cellphone.user
    @greeting = "Hi #{@user.username},"
    
    attachments['u.pdf'] = File.read("#{Rails.root}/public/user.pdf")

    mail to: @user.email, subject: "Your Phone has change", cc: "edgarquintana990@gmail.com", reply_to: "edgarquintana984@hotmail.com"
  end
end
