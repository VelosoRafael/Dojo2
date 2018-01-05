class SODCreateTaskPage < SitePrism::Page

	element :txtSubject, :xpath, "//*[@id='name']"
	element :sltStatus, :xpath, "//*[@id='status']"
	element :sltRelatedTo, :xpath, "//*[@id='parent_type']"
	element :sltPriority, :xpath, "//*[@id='priority']"
	element :btnSave, :xpath, "(//*[@id='SAVE'])[2]"
	element :calendar, :xpath, "//*[@id='date_start_trigger']"
	element :calendarToday, :xpath, "//*[@id='date_start_trigger_div_t_cell4']/a"
	element :sltHours, :xpath, "//*[@id='date_start_hours']"
	element :sltMinutes, :xpath, "//*[@id='date_start_minutes']"
	

	def cadastrarTask(subject,status,related,priority)
		txtSubject.set(subject)
		sltStatus.select(status)
		sltRelatedTo.select(related)
		sltPriority.select(priority)
		btnSave.click
		return SODTaskPage
	end

	def editarTask(status,related,priority,hour,minutes)
		sltStatus.select(status)
		sltRelatedTo.select(related)
		sltPriority.select(priority)
		calendar.click
		calendarToday.click
		sltHours.select(hour)
		sltMinutes.select(minutes)
		btnSave.click
		return SODTaskPage
	end



end