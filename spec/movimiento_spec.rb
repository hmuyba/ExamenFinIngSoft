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

    it "deberia avanzar devoler [2,3] introducida la posicion 3,3 orientacion E y comando A" do
        posicionInicial = "3,3"
        orientacionInicial = "E"
        comandoAvance = "A"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([[2,3], "E"])
    end

    it "deberia avanzar devoler [3,2] introducida la posicion 3,3 orientacion E y comando A" do
        posicionInicial = "3,3"
        orientacionInicial = "S"
        comandoAvance = "A"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([[3,2], "S"])
    end

    it "deberia avanzar devoler [3,4] introducida la posicion 3,3 orientacion E y comando A" do
        posicionInicial = "3,3"
        orientacionInicial = "N"
        comandoAvance = "A"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([[3,4], "N"])
    end

    it "deberia devolver [1,3] al introducir como texto el comando IAIAIAIAA, la posicion inicial 1,2 y la orientacion inicial N" do
        posicionInicial = "1,2"
        orientacionInicial = "N"
        comandoAvance = "IAIAIAIAA"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([[1,3], "N"])
    end
    it "deberia devolver [1,1] al introducir como texto el comando AADAADADDA, la posicion inicial 3,3 y la orientacion inicial E" do
        posicionInicial = "3,3"
        orientacionInicial = "E"
        comandoAvance = "AADAADADDA"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([[1, 1], "E"])
    end



    
end