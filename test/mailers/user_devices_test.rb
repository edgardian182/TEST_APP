require 'test_helper'

class UserDevicesTest < ActionMailer::TestCase
  test "phone_change" do
    mail = UserDevices.phone_change
    assert_equal "Phone change", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
