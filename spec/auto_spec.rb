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
        @auto.ingresarDatos(9,1,"O","AAAADAIADA")
        expect(@auto.mover()).to match_array([4,3,"N"])
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(6,3,"O","AADAAIDDA")
        expect(@auto.mover()).to match_array([5,5,"E"])
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(7,5,"E","DDAAIAIA")
        expect(@auto.mover()).to match_array([6,4,"E"])
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(6,3,"O","AADAAIDDA")
        expect(@auto.mover()).to match_array([5,5,"E"])
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(2,3,"O","AIDDIAID")
        expect(@auto.mover()).to match_array([0,3,"O"])
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(3,5,"E","DDAAIAI")
        expect(@auto.mover()).to match_array([1,4,"E"])
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(7,3,"S","DAAAADAIA")
        expect(@auto.mover()).to match_array([2,4,"O"])
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(3,5,"E","DDAAIAI")
        expect(@auto.mover()).to match_array([1,4,"E"])
     end
     it "Deberia mostrar resultado" do
        @auto.ingresarDatos(7,3,"S","DAAAADAIA")
        expect(@auto.mover()).to match_array([2,4,"O"])
     end
   
end