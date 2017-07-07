#language: pt
#utf-8

Funcionalidade: Buscar agencias
	Detalhes


	Contexto: Buscar agências
		Dado que esteja na pagina de agencias do site
		

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