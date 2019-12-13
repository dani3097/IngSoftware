require 'sinatra'
require './lib/auto'
@@auto 

get '/' do
    erb:home
end
get '/jugar' do
    erb:jugar
end
post '/resultado' do
    @bool=true
    if params[:cols] == '' || params[:filas] == '' || params[:posicionX] == '' || params[:posicionY] == ''
        @bool=false
    elsif Integer(params[:cols]) < 0 || Integer(params[:filas]) < 0 || Integer(params[:posicionX]) < 0 || Integer(params[:posicionY]) < 0
        @bool=false
    end
    if @bool
        @@auto = Auto.new(Integer(params[:cols]), Integer(params[:filas]))
        @xInicial = params[:posicionX]
        @yInicial = params[:posicionY]     
        @sentidoInicial = params[:sentido]  
        @movimientos=params[:movimientos]  
        @@auto.ingresarDatos(@xInicial,@yInicial,@sentidoInicial,@movimientos)       	
        @vec = @@auto.mover()
        @x=@vec[0]
        @y=@vec[1]
        @ori=@vec[2]
    end
    erb:resultado
end


get '/cantCar' do

    erb:obtenerCan

end

