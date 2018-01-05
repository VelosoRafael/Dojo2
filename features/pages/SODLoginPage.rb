class SODLoginPage < SitePrism::Page

	set_url "https://demo.suiteondemand.com/"
	
	element :txtUsername, :xpath,  "//*[@id='user_name']"
	element :txtPassword, :xpath,  "//*[@id='username_password']"
	element :btnSubmit, :xpath,  "//*[@id='bigbutton']"

	def login(username, password)
		txtUsername.set(username)
		txtPassword.set(password)
		btnSubmit.click
		return SODMainPage
	end

end	