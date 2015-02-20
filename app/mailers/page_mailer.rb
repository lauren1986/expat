class PageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.page_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    mail to: "info@bixamedia.com"
  end
end
