class SODMainPage < SitePrism::Page

	element :create, :xpath, "//*[@id='quickcreatetop']/a"
	element :createTask, :xpath, "//*[@id='quickcreatetop']/ul/li[7]/a"
	element :btnSearch, :xpath, "//*[@id='searchbutton']"
	element :txtSearch, :xpath, "//*[@id='query_string']"
	element :smtSearch, :xpath, "//*[@id='searchformdropdown']/div/span/button"

	def novaTask
		create.click
		createTask.click
		return SODCreateTaskPage
	end

	def novaBusca(task)
		btnSearch.click
		txtSearch.set(task)
		smtSearch.click
		return SODSearchResultPage
	end


end