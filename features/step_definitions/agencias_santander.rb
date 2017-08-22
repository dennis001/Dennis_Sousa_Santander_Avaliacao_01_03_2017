Quando(/^devo acessar a area de agências$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
   within_frame(find("iframe")) do
      @page_agencias = PageAgencias.new
      @page_agencias.refCep.set('04534011')
      @page_agencias.wait_for_refCep
      find('#BuscaAgenProximaForm > ul.botoes > li.alignR > a > img').click
      select "R Joaquim Floriano ,27 - São Paulo", :from => "refEndereco"
   end
end

Então(/^devo visualizar a agência mais proxima$/) do
  expect('Agência(s) encontrada (s): 102 agência(s)')
  @home_page.wait_for_agencia_button
end

Quando(/^acessar a area de busca de agências no bairro$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    within_frame(find("iframe")) do
    	page.find_by_id('OpcaoBuscaAgenBairro').click
    	select "SP", :from => "localizacaoEstado"
    	select "SAO PAULO", :from => "localizacaoCidade"
    	select "ITAIM BIBI", :from => "localizacaoBairro"
    	find(:css,'#BuscaAgenBairro ul.botoes li.alignR a img').click
    end 
end

Então(/^devo selecionar agência mais proxima$/) do
  	expect('Agência(s) encontrada (s): 7 agência(s)')
    @home_page.wait_for_agencia_button
end

Quando(/^acessar a area de buscar agências por numero da mesma$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  	within_frame(find("iframe")) do
      @page_agencias = PageAgencias.new
  		page.find_by_id('OpcaoBuscaAgenNumero').click
    	page.find_by_id('txNumeroAgencia').set(214)
      find(:css,'#BuscaAgenNumero li.alignR a img').click
    end
end

Então(/^devo visualizar o local da agência solicitada$/) do
  	expect('Agência(s) encontrada (s): 1 agência(s)')
    @home_page.wait_for_agencia_button
end


Quando(/^digitar os dados da minha localidade$/) do
  @home_page.wait_for_agencia_button
 page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  within_frame(find("iframe")) do
    page.find_by_id('OpcaoBuscaAgenRota').click
    page.find_by_id('refCepOrigem').set("06330130")
    find(:css,'#BuscaAgenRotaOrigemForm ul.botoes li.alignR a img').click
    select "R Geraldo Soares Xavier ,47 - Carapicuíba", :from => "refEnderecoOrigem"
    fill_in "refCepDestino", :with => "04534011"
    find(:css,'#BuscaAgenRotaDestinoForm ul.botoes li.alignR a img').click
   	select "R Joaquim Floriano ,27 - São Paulo", :from => "refEnderecoDestino"
   	find(:css,'#BuscaAgenRotaOK ul.botoes li.unico.alignR a img').click
  end
end

Então(/^devo selecionar uma das agências mais proximas$/) do
	expect('Agência(s) encontrada (s): 1 agência(s)')
end