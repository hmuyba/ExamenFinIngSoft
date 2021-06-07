require 'sinatra'
require './config'

get '/' do
    erb:bienvenida
end

post '/menu' do
    $size = params[:size]
    erb :menu
end