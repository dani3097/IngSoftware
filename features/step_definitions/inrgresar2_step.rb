Given("visito la pagina jugar del auto 2") do
    visit '/jugar2'
end
Then("veo mensaje {string}") do |string|
    last_response.body.should =~ /#{string}/m
end


Then("veo etiqueta {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end



  Given("visito la pagina de ingresar Comandos del {int} auto") do |int|
    visit '/jugar2'
  end
  
  Given("ingreso fila {string} en el campo {string}") do |string, string2|
   fill_in(string2, :with => string)
  end
  
  Given("ingreso columnas {string} en el campo {string}") do |string, string2|
   fill_in(string2, :with => string)
  end
  
  Given("ingreso la posx {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)
  end
  
  Given("ingreso la posy {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)
  end
  
  Given("ingreso origen {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)
  end
  
  Given("ingreso comandos {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)
  end
  
  When("presiono el boton para poder obtener PosicioActual {string}") do |string|
    click_button(string)
  end
  
  Then("deberia ver la Posicion nueva de X como {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  
  Then("deberia ver la Posicion nueva de Y como {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  
  Then("deberia ver la Orientacion nueva como {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end