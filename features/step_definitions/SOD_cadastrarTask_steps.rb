Quando /^acessar a tela de Create$/ do 
	mainPage = SODMainPage.new
	mainPage.novaTask
end

E /^preencher com o "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/ do |subject, status, related, priority|
	createPage = SODCreateTaskPage.new
	createPage.cadastrarTask(subject,status,related,priority)
end


Entao /^uma nova tela com a Task salva será exibida com o "([^"]*)"$/ do |subject|
	taskPage = SODTaskPage.new
	taskPage.verificarTask(subject)
end