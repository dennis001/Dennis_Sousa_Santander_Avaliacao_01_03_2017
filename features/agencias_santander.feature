#language: pt
#utf-8

Funcionalidade: Central de Atendimento	
	Eu como cliente do banco
	Quero buscar agências mais proximas de minha localidade
	Para entrar em contato com a mesma

	Cenario: Verificar as agências mais proximas
		Dado que esteja na home do site
		Quando acessar a area de agências
		Então devo selecionar a agência mais proxima
		
	@btn2
	Cenario: Buscar agências em outros bairros
		Dado que esteja na pagina de agencias do site
		Quando acessar a area de busca de agências no bairro
		Então devo selecionar agência mais proxima

	@btn3
	Cenario: Buscar bancos através do numero das agências
		Dado que esteja na pagina de agencias do site no campo "busque pelo numero da agência"
		Quando acessar a area de buscar agências por numero da mesma
		Então devo visualizar o local da agência solicitada