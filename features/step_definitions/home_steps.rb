Given("visito la pagina principal") do
    visit '/'
end
Then("deberia ver {string}") do |string|
    last_response.body.should =~ /#{string}/m
end
When("presiono el boton {string}") do |button|
    click_button(button)
end
Then("deberia ver una pagina con el titulo {string}") do |titulo|
    last_response.body.should =~ /#{titulo}/m
end