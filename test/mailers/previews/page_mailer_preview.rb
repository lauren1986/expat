# Preview all emails at http://localhost:3000/rails/mailers/page_mailer
class PageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/page_mailer/welcome
  def welcome
    PageMailer.welcome
  end

end
