#language: pt
#utf-8

Funcionalidade: Central de Atendimento	
	Eu como cliente do banco
	Quero acessar a central de atendimento
	Para entrar em contato com o mesmo

	Cenario: Verificar o telefone da central
		Dado que esteja no site de busca
		E pesquise por pessoa fisica santander
		Quando acessar a home do banco
		Então devo visualizar a central de atendimento
		E devo validar que existe o telefone do banco