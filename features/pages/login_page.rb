class LoginPage < SitePrism::Page

	element :input_email, '#email'
	element :input_password, '#passwd'
	element :login_button, '#SubmitLogin'
	element :message_alert, 'div[class*="alert"] > ol > li'

	def login(user, password)
        input_email.set user
        input_password.set password
        login_button.click
	end

end