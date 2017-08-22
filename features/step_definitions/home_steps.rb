Dado(/^que esteja na home do site$/) do
  @home_page = PageHome.new
  @home_page.load
  @home_page.agencia_button.click
  @home_page.click_aqui.click
end