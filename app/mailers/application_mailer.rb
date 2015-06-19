class ApplicationMailer < ActionMailer::Base
  default from: "rufygtfo@gmail.com"
  layout 'mailer'

  def send_mail( user_mail, mail_to, subject, content)
  	mail(from: user_mail ,to: mail_to ,subject: subject ,body: content)

  end
end
