Quando /^buscar pelo nome da "([^"]*)" criada$/ do |task|
	mainPage = SODMainPage.new
	mainPage.novaBusca(task)
end

E /^selecionar o resultado da busca$/ do 
	searchPage = SODSearchResultPage.new
	searchPage.acessarTask
end

E /^realizar alterações nos campos: "([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)"$/ do |status,related,priority,hour,minutes|
	taskPage = SODTaskPage.new
	taskPage.editar
	
	editTaskPage = SODCreateTaskPage.new
	editTaskPage.editarTask(status,related,priority,hour,minutes)
end

Entao /^voltará para a tela principal da "([^"]*)"$/ do |task|
	taskPage = SODTaskPage.new
	taskPage.verificarTask(task)
end
