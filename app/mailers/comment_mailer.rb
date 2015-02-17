class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment(name)
    @greeting = "someone likes what you have to say!"
    @name = name
    mail to: "lauren.pawell@gmail.com"
  end
end
