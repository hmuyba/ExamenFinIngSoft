require './lib/MoveCar.rb'

RSpec.describe "mover correctamente el auto" do

    it "deberia cambiar la orientacion N a E la introducir un comando de girar D" do
        posicionInicial = "1,2"
        orientacionInicial = "N"
        comando = "D"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comando)
        expect(resultado).to eq([[1,2], "E"])
    end

    it "deberia cambiar la orientacion N a O la introducir un comando de girar I" do
        posicionInicial = "1,2"
        orientacionInicial = "N"
        comando = "I"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comando)
        expect(resultado).to eq([[1,2], "O"])
    end

    it "deberia avanzar devoler [2,2] introducida la posicion 1,2, orientacion O y comando A" do
        posicionInicial = "1,2"
        orientacionInicial = "O"
        comandoAvance = "A"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([[2,2], "O"])
    end



    
end