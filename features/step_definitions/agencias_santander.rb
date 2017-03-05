
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
sleep 5
 find(:css,'#BuscaAgenProximaForm > ul.botoes > li.alignR > a > img').click
	end
end