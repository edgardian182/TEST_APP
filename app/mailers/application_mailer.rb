class ApplicationMailer < ActionMailer::Base
  default from: "test-email@example.com"
  layout 'mailer'
end
