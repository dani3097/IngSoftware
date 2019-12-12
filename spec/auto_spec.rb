require './lib/auto'
RSpec.describe Auto do
    before (:each) do
        @auto=Auto.new()
    end
    it "Deberia mostrar 0 para la posicion inicial en X" do
       @auto.ingresarDatos(0,0,"N","ADDIA")
       expect(@auto.obtenerX()).to eq 0
    end
    it "Deberia mostrar 0 para la posicion inicial en Y" do
        @auto.ingresarDatos(0,0,"N","ADDIA")
        expect(@auto.obtenerY()).to eq 0
     end
     it "Deberia mostrar N para el sentido inicial" do
        @auto.ingresarDatos(0,0,"N","ADDIA")
        expect(@auto.obtenerSentido()).to eq "N"
     end
     it "Deberia mostrar AIDA para los movimientos iniciales" do
        @auto.ingresarDatos(0,0,"N","AIDA")
        expect(@auto.obtenerMovimientos()).to eq "AIDA"
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(1,2,"N","IAIAIAIAA")
        expect(@auto.mover()).to match_array([1,3,"N"])
     end
    # it "Deberia mostrar posicion inicial en X" do
    #     auto1=Auto.new
    #     auto1.ingresarDatos(0,0,"N","AIDDAI")
    #     expect(auto1.obtenerPosicionX().to eq "0")
    # end
end