ActionMailer::Base.delivery_method = :smtp


ActionMailer::Base.smtp_settings = {
     :address              => "smtp.gmail.com",
     :port                 => 587,
     :domain               => "chupandero.com",
     :user_name            => "hola@chupandero.mygbiz.com",
     :password             => "chupandero1986",
     :authentication       => "plain",
     :enable_starttls_auto => true
}
ActionMailer::Base.default_url_options[:host] = "chupandero.com"
