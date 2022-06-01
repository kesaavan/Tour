class UserMailer < ApplicationMailer
	default from: 'notifications@findyourlocations.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://findyourlocations.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
