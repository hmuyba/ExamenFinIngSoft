require './lib/MoveCar.rb'

RSpec.describe "mover correctamente el auto" do

    it "deberia cambiar la orientacion N a E la introducir un comando de girar D" do
        posicionInicial = "1,2"
        orientacionInicial = "N"
        comando = "D"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comando)
        expect(resultado).to eq([[1,2], "E"])
    end

    
end