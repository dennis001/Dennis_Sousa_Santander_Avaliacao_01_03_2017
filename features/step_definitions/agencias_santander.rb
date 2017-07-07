
Dado(/^que esteja na home do site$/) do
  visit "https://www.santander.com.br"
  assert_text("Agências")
  click_link("Agências")
  click_link("Clique aqui")
end

Então(/^devo acessar a area de agências$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
	 within_frame(find("iframe")) do
		  fill_in "refCep", :with => "04534011"
 		  find(:css,'#BuscaAgenProximaForm > ul.botoes > li.alignR > a > img').click
 		  select "R Joaquim Floriano ,27 - São Paulo", :from => "refEndereco"
		  assert_text("Agência(s) encontrada (s): 101 agência(s)")
   end
end

Dado(/^que esteja na pagina de agencias do site$/) do
  visit "https://www.santander.com.br/br/busca-de-agencia"
end

Quando(/^acessar a area de busca de agências no bairro$/) do
	within_frame(find("iframe")) do
		page.has_css? 'table tr.OpcaoBuscaAgenBairro'
		page.find_by_id('OpcaoBuscaAgenBairro').click
	end	
end

Então(/^devo selecionar agência mais proxima$/) do
  within_frame(find("iframe")) do
  	select "SP", :from => "localizacaoEstado"
  	select "SAO PAULO", :from => "localizacaoCidade"
  	select "ITAIM BIBI", :from => "localizacaoBairro"
  	find(:css,'#BuscaAgenBairro ul.botoes li.alignR a img').click
  	assert_text 'Agência(s) encontrada (s): 7 agência(s)'
  end
end

Quando(/^acessar a area de buscar agências por numero da mesma$/) do
  	within_frame(find("iframe")) do
		page.has_css? 'table tr.OpcaoBuscaAgenNumero'
		page.find_by_id('OpcaoBuscaAgenNumero').click
	end
end

Então(/^devo visualizar o local da agência solicitada$/) do
  within_frame(find("iframe")) do
  	fill_in "txNumeroAgencia", :with => "214"
  	find(:css,'#BuscaAgenNumero li.alignR a img').click
  	assert_text 'Agência(s) encontrada (s): 1 agência(s)'
  end
end


Quando(/^digitar os dados da minha localidade$/) do
  within_frame(find("iframe")) do
		page.has_css? 'table tr.OpcaoBuscaAgenRota'
		page.find_by_id('OpcaoBuscaAgenRota').click
	end
	within_frame(find("iframe")) do
		fill_in "refCepOrigem", :with => "06330130"
 		find(:css,'#BuscaAgenRotaOrigemForm ul.botoes li.alignR a img').click
 		select "R Geraldo Soares Xavier ,47 - Carapicuíba", :from => "refEnderecoOrigem"
 	end
end

Então(/^devo selecionar uma das agências mais proximas$/) do
  	within_frame(find("iframe")) do
   		fill_in "refCepDestino", :with => "04534011"
   		find(:css,'#BuscaAgenRotaDestinoForm ul.botoes li.alignR a img').click
   		select "R Joaquim Floriano ,27 - São Paulo", :from => "refEnderecoDestino"
   		find(:css,'#BuscaAgenRotaOK ul.botoes li.unico.alignR a img').click
   		assert_text 'Agência(s) encontrada (s): 1 agência(s)'
   	end
end