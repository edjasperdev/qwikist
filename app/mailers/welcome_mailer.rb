class WelcomeMailer < ActionMailer::Base
  def member_intro(email)

    mail(to: "#{email}",
         from: "DO_NOT_REPLY@qwikist.com",
         subject:"Welcome to Qwikist!"
         )
  end

  def provider_intro(email)
 
    mail(to: "#{email}",
         from:"DO_NOT_REPLY@qwikist.com",
         subject:"Welcome to Qwikist!"
         )
  end

end
