require './lib/MoveCar.rb'

RSpec.describe "separar correctamente los caracteres introducidos en un string" do
    it "deberia deboler el array [1,2] al introducir el texto 1,2" do
        numero="1,2"
        resultado=getInitialPosition(numero)
        expect(resultado).to eq([1,2])
    end

    it "deberia devolver el array [3,2] al introducir el texto 3,2" do
        numero = "3,2"
        resultado = getInitialPosition(numero)
        expect(resultado).to eq([3,2])
    end
  

end