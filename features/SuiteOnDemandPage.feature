#language: pt
#utf-8

Funcionalidade: Operações de Cadastro
	Eu como administrador
	Quero obter Acesso ao SuiteOnDemands
	Para cadastrar, deletar ou alterar Tasks

Contexto: Acessar SuiteOnDemands
	Dado que o usuario esteja logado

@Cadastro
Esquema do Cenario: Cadastrar Task
	Quando acessar a tela de Create
	E preencher com o <subject>, <status>, <related>, <priority>
	Então uma nova tela com a Task salva será exibida com o <subject>

	Exemplos:
		|	subject		|	status			|	related			|	priority	|
		|	"Alfa"		|	"Not Started"	|	"Account"		|	"Low"		|
		|	"Beta"		|	"In Progress"	|	"Contact"		|	"Medium"	|
		|	"Charlie"	|	"Pending Input"	|	"Task"			|	"High"		|
		|	"Delta"		|	"Deferred"		|	"Opportunity"	|	"Low"		|
		|	"Echo"		|	"Not Started"	|	"Bug"			|	"Medium"	|
		|	"Foxtrot"	|	"In Progress"	|	"Case"			|	"High"		|
		|	"Golf"		|	"Pending Input"	|	"Lead"			|	"Low"		|
		|	"Hotel"		|	"Deferred"		|	"Project"		|	"Medium"	|
		|	"India"		|	"Not Started"	|	"Project Task"	|	"High"		|
		|	"Juliet"	|	"In Progress"	|	"Target"		|	"Low"		|


@Editar
Esquema do Cenario: Editar Task
	Quando buscar pelo nome da <task> criada
	E selecionar o resultado da busca
	E realizar alterações nos campos: <status>,<related>,<priority>,<hour>,<minutes>
	Então voltará para a tela principal da <task>

	Exemplos:
		|	task		|	status			|	related			|	priority	|	hour	|	minutes	|
		|	"Alfa"		|	"In Progress"	|	"Contact"		|	"Medium"	|	"01"	|	"00"	|
		|	"Beta"		|	"Deferred"		|	"Opportunity"	|	"Low"		|	"02"	|	"15"	|
		|	"Charlie"	|	"In Progress"	|	"Target"		|	"Low"		|	"03"	|	"30"	|
		|	"Delta"		|	"Deferred"		|	"Project"		|	"Medium"	|	"04"	|	"45"	|
		|	"Echo"		|	"Not Started"	|	"Account"		|	"Low"		|	"05"	|	"00"	|
		|	"Foxtrot"	|	"Pending Input"	|	"Task"			|	"Low"		|	"06"	|	"15"	|
		|	"Golf"		|	"In Progress"	|	"Case"			|	"High"		|	"07"	|	"30"	|
		|	"Hotel"		|	"Not Started"	|	"Project Task"	|	"High"		|	"08"	|	"45"	|
		|	"India"		|	"Pending Input"	|	"Lead"			|	"Low"		|	"09"	|	"00"	|
		|	"Juliet"	|	"Not Started"	|	"Bug"			|	"Medium"	|	"10"	|	"15"	|

@Excluir
Esquema do Cenario: Deletar Task
Quando buscar pela <task>
E selecionar o resultado
E excluir a task
Entao voltara para tela de lista de <task> atualizada

Exemplos:
		|	task		|
		|	"Juliet"	|
		|	"India"		|
		|	"Hotel"		|
		|	"Golf"		|
		|	"Foxtrot"	|
		|	"Echo"		|
		|	"Delta"		|
		|	"Charlie"	|
		|	"Beta"		|
		|	"Alfa"		|