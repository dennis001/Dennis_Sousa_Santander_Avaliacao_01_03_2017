Dado(/^que esteja no site de busca$/) do
  visit "http://www.bing.com"
end

Dado(/^pesquise por pessoa fisica santander$/) do
  fill_in "sb_form_q", :with => "pessoa fisica santander"
  click_button("sb_form_go")
end

Quando(/^acessar a home do banco$/) do
  click_link("Pessoa Física - Santander")
end

Então(/^devo visualizar a central de atendimento$/) do
  find("#central").click
end

Então(/^devo validar que existe o telefone do banco$/) do
  assert_text("4004 3535")
end