require 'app_mail'
require 'app_mail/rails/action_mailer_delivery_method'

if defined?(ActionMailer)
  ActionMailer::Base.add_delivery_method :appmail, AppMail::Rails::ActionMailerDeliveryMethod
end
