# AppMail for Rails

AppMail for Rails allows you to integrate AppMail directly into Action Mailer in a Rails application. There's no need to change any of your existing mailers, you just need to update your environment config.

## Installation

Add the `appmail` gem to your Gemfile and run `bundle install` to install it.

```ruby
gem 'appmail-rails', '~> 1.0'
```

## Configuration

Open up your `config/environment/production.rb` or `config/environment/development.rb` and change the delivery method to `appmail`.

```ruby
config.action_mailer.deilvery_method = :appmail
```

You'll also need to provide your server key. If you don't have a server key, [login to our web interface](https://my.appmail.io) and generate a credential for the server you wish to send messages through.

You also need to set the `APPMAIL_KEY` environment variable to your key. Alternatively, you can configure it as shown below in your environment configuration file along with the `delivery_method`.

```ruby
config.action_mailer.appmail_settings = {:server_key => "xxxxx"}
```

That's it! Send an email to test everything is working as you'd expect. Remember, if you have `raise_delivery_errors` set to false you might not see any errors. Use `deliver!` when running your tests so any exceptions are raised.

Don't forget, you need to make sure that you're sending mail from domains that are added & verified to your AppMail domain.
