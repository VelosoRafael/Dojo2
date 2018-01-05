class SODSearchResultPage < SitePrism::Page

	element :linkResult, :xpath, "(//*[@id='pagecontent']/table/tbody[2]/tr/td[2]/a)[1]"

	def acessarTask 
		linkResult.click
		return SODTaskPage
	end

end