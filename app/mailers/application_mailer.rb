class ApplicationMailer < ActionMailer::Base
  # default from: 'from@example.com'
  default from: "'WorkPro Notification' <info@workprohr.com>"
  layout 'mailer'
end
