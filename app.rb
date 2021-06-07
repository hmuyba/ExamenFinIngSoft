require 'sinatra'
require './config'
require './lib/MoveCar.rb'

get '/' do
    erb:bienvenida
end

post '/menu' do
    $size = params[:size]
    erb :menu
end

post '/resultado' do
    $inicial = params[:PosInicial]
    @posicionInicial = getInitialPosition($inicial)
    $orientacionInicial = params[:Orientacion]
    comandos = params[:comandos]
    @resultado = calcularCamino($inicial, $orientacionInicial, comandos)
    erb :resultado
end