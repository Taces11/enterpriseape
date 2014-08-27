ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  
    :address                 => 'smtp.sentgrid.net',
    :port                    => '587',
    :authentication          => :plan,
    :user_name               => 'app28823210@heroku.com',
    :password                => 'gkvntojm',
    :domain                  => 'heroku.com',
    :enable_starttls_auto    => true
}
