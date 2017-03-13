class UserMailer < ApplicationMailer
	layout 'awesome' 
	default to: 'notifications@example.com',
					from: 'notifications@example.com'
 
  def remember_email

    @url  = 'http://example.com/login'
    mail(to: 'aaaaa@aaaaa.com',
    		 subject: 'Welcome to My Awesome Site'
    		 )
  end
end
