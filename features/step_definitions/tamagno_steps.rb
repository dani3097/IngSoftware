Given("visito la pagina jugar") do
    visit '/jugar'
end
Then("veo un mensaje {string}") do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end
Then("veo una etiqueta {string}") do |etiqueta|
    last_response.body.should =~ /#{etiqueta}/m
end
When("lleno el campo {string} con {string}") do |campo, valor|
    fill_in(campo, :with => valor)
end
Then("veo el valor {string} en el campo {string}") do |valor, campo|
    last_response.body.should =~ /#{valor}/m
end