# TODO - copy this file to /config/initializers/grokphoto.rb
# Then tweak the values to reflect your setup

# session store
# TODO - change your key and secret values
ActionController::Base.session = {
  :key         => '_yourappname_session',
  :secret      => 'your_secret_key_should_replace_this'
}

# paperclip / imagemagick 
# TODO - change this to where imagemagick is installed (which convert)
Paperclip.options[:command_path] = "/usr/bin"

# mailer
# TODO - change this to your host
ActionMailer::Base.default_url_options[:host] = "localhost"

# gmail smtp
# TODO - change the username and password to your gmail account settings
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true,
  :user_name => "username@gmail.com",
  :password => "yourpassword"
}

# memcache store - TODO uncomment this if you're using a memcache and change your namespace if you like
# ActionController::Base.cache_store = :mem_cache_store, "localhost", { :namespace => 'grokphoto' }
