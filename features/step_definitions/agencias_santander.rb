
Dado(/^que esteja na home do site$/) do
  visit "https://www.santander.com.br"
  assert_text("Agências")
  click_link("Agências")
end

Quando(/^acessar a area de agências$/) do
  click_link("Clique aqui")
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  assert_text("Encontre a agência mais próxima de você.")
end

Então(/^devo selecionar a agência mais proxima$/) do
assert_text("Cidade*")
#fill_in("refCep", :with => "06414025")
#find("#OpcaoBuscaAgencia").click

end