ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address => "smtp.gmail.com",
  :port => 587,
#  :domain => "your-google-apps-domain",
  :authentication => :plain,
  :user_name => ENV['MAILUSER'],
  :password => ENV['MAILPASS']
}
