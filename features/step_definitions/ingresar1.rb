
  Given("visito pagina de ingresar Comandos del {int} auto") do |int|
    visit '/jugar'
  end
  
  Given("ingreso las filas {string} en el campo {string}") do |string, string2|
   fill_in(string2, :with => string)
  end
  
  Given("ingreso las columnas {string} en el campo {string}") do |string, string2|
   fill_in(string2, :with => string)
  end
  
  Given("ingreso posx {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)
  end
  
  Given("ingreso posy {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)
  end
  
  Given("ingreso el origen {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)
  end
  
  Given("ingreso comando {string} en el campo {string}") do |string, string2|
    fill_in(string2, :with => string)
  end
  
  When("presiono boton para poder obtener PosicioActual {string}") do |string|
    click_button(string)
  end
  
  Then("deberia ver Posicion nueva de X como {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  
  Then("deberia ver Posicion nueva de Y como {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  
  Then("deberia ver Orientacion nueva como {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end