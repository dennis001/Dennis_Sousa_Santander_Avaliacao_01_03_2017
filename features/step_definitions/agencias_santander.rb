
Dado(/^que esteja na home do site$/) do
  visit "https://www.santander.com.br"
  assert_text("Agências")
  click_link("Agências")
end

Quando(/^acessar a area de agências$/) do
  click_link("Clique aqui")
end

Então(/^devo selecionar a agência mais proxima$/) do
page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
	within_frame(find("iframe")) do
		fill_in "refCep", :with => "04534011"
 		find(:css,'#BuscaAgenProximaForm > ul.botoes > li.alignR > a > img').click
 	select "R Joaquim Floriano ,27 - São Paulo", :from => "refEndereco"
		assert_text("Agência(s) encontrada (s): 100 agência(s)")
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
  	find(:css, '#BuscaAgenBairroForm > ul.botoes > li.alignR > a > img').click
  	#assert_text 'Agência(s) encontrada (s): 7 agência(s)'
  	sleep 5
  end
end