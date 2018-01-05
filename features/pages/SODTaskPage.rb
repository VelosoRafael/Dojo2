class SODTaskPage < SitePrism::Page

	element :actions, :xpath, "//*[@id='tab-actions']"
	element :edit, :xpath, "//*[@id='edit_button']"
	element :delete, :xpath, "//*[@id='delete_button']"

	def verificarTask(subject)
		assert_text(subject)
	end

	def verificarExclusaoTask(subject)
		assert_no_text(subject)
	end

	def editar
		actions.click
		edit.click
		return SODCreateTaskPage
	end

	def deletar
		actions.click
		delete.click
		page.driver.browser.switch_to.alert.accept 
	end

end