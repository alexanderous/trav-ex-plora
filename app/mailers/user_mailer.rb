class UserMailer < ActionMailer::Base
  default from: "tech@trepic.co"

  def signup_confirmation_email(invite)
  	@invite = invite
  	@url = 'http://www.trepic.co'
  	attachments.inline['trepic-logo-rgb.jpg'] = File.read('app/assets/images/trepic-logo-rgb.jpg')
  	attachments.inline['success-gradient-email.jpg'] = File.read('app/assets/images/success-gradient-email.jpg')
  	mail(to: @invite.email, subject: 'Thanks for joining Trepic’s waiting list!')
  end

  def notify_trepic_signup_email(invite)
  	@invite = invite
  	@url = 'http://www.trepic.co'
  	attachments.inline['trepic-logo-rgb.jpg'] = File.read('app/assets/images/trepic-logo-rgb.jpg')
  	attachments.inline['success-gradient-email.jpg'] = File.read('app/assets/images/success-gradient-email.jpg')
  	mail(to: 'epictrips@trepic.co', subject: 'Another person joined the wait list!')
  end

  def support_confirmation_email(support)
  	@support = support
  	@url = 'http://www.trepic.co'
  	attachments.inline['trepic-logo-rgb.jpg'] = File.read('app/assets/images/trepic-logo-rgb.jpg')
  	attachments.inline['success-gradient-email.jpg'] = File.read('app/assets/images/success-gradient-email.jpg')
  	mail(to: @support.email, subject: 'Trepic has been notified of your support request')
  end

  def notify_trepic_tech_support_email(support)
  	@support = support
  	@url = 'http://www.trepic.co'
  	attachments.inline['trepic-logo-rgb.jpg'] = File.read('app/assets/images/trepic-logo-rgb.jpg')
  	attachments.inline['success-gradient-email.jpg'] = File.read('app/assets/images/success-gradient-email.jpg')
  	mail(to: 'tech@trepic.co', subject: 'A Trepic user needs tech support')
  end

  def notify_trepic_booking_support_email(support)
  	@support = support
  	@url = 'http://www.trepic.co'
  	attachments.inline['trepic-logo-rgb.jpg'] = File.read('app/assets/images/trepic-logo-rgb.jpg')
  	attachments.inline['success-gradient-email.jpg'] = File.read('app/assets/images/success-gradient-email.jpg')
  	mail(to: 'reservations@trepic.co', subject: 'A Trepic user has a reservation issue')
  end

  def collaboration_request_confirmation_email(collaboration)
  	@collaboration = collaboration
  	@url = 'http://www.trepic.co'
  	attachments.inline['trepic-logo-rgb.jpg'] = File.read('app/assets/images/trepic-logo-rgb.jpg')
  	attachments.inline['success-gradient-email.jpg'] = File.read('app/assets/images/success-gradient-email.jpg')
  	mail(to: @collaboration.email, subject: 'Trepic has been notified of your interest in collaboration')
  end

  def notify_trepic_collaboration_request_email(collaboration)
  	@collaboration = collaboration
  	@url = 'http://www.trepic.co'
  	attachments.inline['trepic-logo-rgb.jpg'] = File.read('app/assets/images/trepic-logo-rgb.jpg')
  	attachments.inline['success-gradient-email.jpg'] = File.read('app/assets/images/success-gradient-email.jpg')
  	mail(to: 'kimberli@trepic.co', subject: 'Someone is interested in collaborating with Trepic')
  end

end
