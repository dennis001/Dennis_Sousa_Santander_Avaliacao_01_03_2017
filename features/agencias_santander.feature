#language: pt
#utf-8

Funcionalidade: Central de Atendimento	
	Eu como cliente do banco
	Quero buscar agências mais proximas de minha localidade
	Para entrar em contato com a mesma

	Contexto: Verificar as agências mais proximas
		Dado que esteja na home do site

		@btn1
		Cenario: Buscar agências
			Quando devo acessar a area de agências
			Então devo visualizar a agência mais proxima	
		
		@btn2
		Cenario: Buscar agências em outros bairros
			Quando acessar a area de busca de agências no bairro
			Então devo selecionar agência mais proxima

		@btn3
		Cenario: Buscar bancos através do numero das agências
			Quando acessar a area de buscar agências por numero da mesma
			Então devo visualizar o local da agência solicitada

		@btn4
		Cenario: Buscar bancos através da minha rota de viagem
			Quando digitar os dados da minha localidade
			Então devo selecionar uma das agências mais proximas