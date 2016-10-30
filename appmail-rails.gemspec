require File.expand_path('../lib/app_mail/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = "appmail-rails"
  s.description   = %q{Rails/ActionMailer library for the AppMail E-Mail Platform}
  s.summary       = s.description
  s.homepage      = "https://appmail.io"
  s.version       = AppMail::Rails::VERSION
  s.files         = Dir.glob("{lib}/**/*")
  s.require_paths = ["lib"]
  s.authors       = ["Adam Cooke"]
  s.email         = ["me@adamcooke.io"]
  s.licenses      = ['MIT']
  s.add_dependency "appmail", ">= 0.0.2", "< 2.0"
end
