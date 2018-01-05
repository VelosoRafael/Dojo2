Quando /^buscar pela "([^"]*)"$/ do |task|
	mainPage = SODMainPage.new
	mainPage.novaBusca(task)
end

E /^selecionar o resultado$/ do 
	searchPage = SODSearchResultPage.new
	searchPage.acessarTask
end

E /^excluir a task$/ do 
	taskPage = SODTaskPage.new
	taskPage.deletar
end

Entao /^voltara para tela de lista de "([^"]*)" atualizada$/ do |task|
	taskPage = SODTaskPage.new
	taskPage.verificarExclusaoTask(task)
end