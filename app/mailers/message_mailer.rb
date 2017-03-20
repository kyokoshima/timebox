class MessageMailer < ApplicationMailer

	default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.hello.subject
  #
  def hello(name)

    @greeting = "Hi"

    mail to: "to@example.org"
    
    @name = name
    mail(
      to:      'to@example.net',
      subject: 'Mail from Message',
    ) do |format|
      format.html
    end
  end
end
