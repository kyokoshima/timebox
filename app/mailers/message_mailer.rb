class MessageMailer < ApplicationMailer

	default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.hello.subject
  #

  def send_mail

  	Capsule.yet.where("dig_date <= ?", DateTime.now).each do |c|
  		mail(to: c.mail_address, subject: c.title) do |format|
  			@name = c.title
  			@capsule = c
  			format.html
  		end
  		c.done!
  	end

  end
end
