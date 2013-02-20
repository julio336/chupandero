class UserMailer < ActionMailer::Base
  default from: "hola@chupandero.mygbiz.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(register)
    @register = register
    mail to: register.email, subject: "Confirmacion de subscripcion al CHUPANDERO"
  end
end
