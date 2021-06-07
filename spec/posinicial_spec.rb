require './lib/MoveCar.rb'

RSpec.describe "separar correctamente los caracteres introducidos en un string" do
    it "deberia deboler el array [1,2] al introducir el texto 1,2" do
        numero="1,2"
        resultado=getInitialPosition(numero)
        expect(resultado).to eq([1,2])
    end
  

end