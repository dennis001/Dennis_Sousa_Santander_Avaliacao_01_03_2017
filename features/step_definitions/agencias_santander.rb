
Dado(/^que esteja na home do site$/) do
  visit "https://www.santander.com.br"
  assert_text("Agências")
  click_link("Agências")
end

Quando(/^acessar a area de agências$/) do
  click_link("Clique aqui")
  sleep 5
  new_window = window_opened_by {click_link'https://www.santander.com.br/br/busca-de-agencia'}
	within_window new_window do
  assert_text("Encontre a agência mais próxima de você.")
  	page.within_window(login_window) do
  		end
  	end

end

Então(/^devo selecionar a agência mais proxima$/) do
  pending # Write code here that turns the phrase above into concrete actions
end