
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
	find('OpcaoBuscaAgenBairro').click_on
	sleep 3
 end

Então(/^devo selecionar agência mais proxima$/) do
  pending # Write code here that turns the phrase above into concrete actions
end