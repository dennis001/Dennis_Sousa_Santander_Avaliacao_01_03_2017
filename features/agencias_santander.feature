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

	Cenario: