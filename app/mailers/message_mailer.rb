class MessageMailer < ApplicationMailer

	default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.hello.subject
  #

  def send_mail
  	
  	Capsule.yet.where("dig_date <= ?", DateTime.now).each do |c|
  		mail(to: c.mail_address, subject: 'aaaaa') do |format|
  			format.html
  		end
  		c.done!
  	end

  end
end
