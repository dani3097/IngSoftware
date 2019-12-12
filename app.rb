require 'sinatra'
require './lib/auto'
@@auto=Auto.new()  

get '/' do
    erb:home
end
get '/jugar' do
    erb:jugar
end
post '/resultado' do
    
    @xInicial = params[:posicionX]
    @yInicial = params[:posicionY]     
    @sentidoInicial = params[:sentido]  
    @movimientos=params[:movimientos]  
    @@auto.ingresarDatos(@xInicial,@yInicial,@sentidoInicial,@movimientos)       	
    @vec = @@auto.mover()
    @x=@vec[0]
    @y=@vec[1]
    @ori=@vec[2]
    erb:resultado
end


get '/cantCar' do

    erb:obtenerCan

end

