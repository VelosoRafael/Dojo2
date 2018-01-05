Dado /^que o usuario esteja logado$/ do
	loginPage = SODLoginPage.new
	loginPage.load
	loginPage.login("will","will")
end
