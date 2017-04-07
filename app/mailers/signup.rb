class Signup < Action Mailer::Base 
 default from: 'no-reply@colcho.net'

	def confirm_email(user)
		@user = user
		@confirmation_link = root_url
		
		mail({
		   to: user.mail,
		   bcc: ['sign ups <signups@colcho.net>'],
		   subject: I18n. t('signup.confirm.subject')
		   })
	end
end
