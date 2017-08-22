class PageHome < SitePrism::Page
 set_url "https://www.santander.com.br"
 
 element :agencia_button, 'a[title="Procure uma Agência"]'
 element :click_aqui, 'a[href="https://www.santander.com.br/br/busca-de-agencia"]'
end