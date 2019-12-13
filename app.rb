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
get '/jugar2' do
    erb:jugar2
end
   
post '/resultado2' do
    @xInicial = params[:posicionX]
    @yInicial = params[:posicionY]     
    @sentidoInicial = params[:sentido]  
    @movimientos=params[:movimientos]

    @xInicial2 = params[:posicionX2]
    @yInicial2 = params[:posicionY2]     
    @sentidoInicial2 = params[:sentido2]  
    @movimientos2=params[:movimientos2]  
    auto = Auto.new 
    auto2 = Auto.new 
    auto.ingresarDatos(@xInicial,@yInicial,@sentidoInicial,@movimientos)    
    auto2.ingresarDatos(@xInicial2,@yInicial2,@sentidoInicial2,@movimientos2)    
    @vec = auto.mover()
    @vec2 = auto2.mover()
    @x=@vec[0]
    @y=@vec[1]
    @ori=@vec[2]    
    @x2=@vec2[0]
    @y2=@vec2[1]
    @ori2=@vec2[2]  
       
       erb:resultado2
   
      
end
get '/obtenerCan' do
    erb:obtenerCan
end

get '/jugada' do

    @cantidad=params[:cantidad]

    if @cantidad.to_i==1
        erb:jugar
    elsif @cantidad.to_i==2
        erb:jugar2
    elsif @cantidad.to_i==3
        erb:jugar3
    elsif @cantidad.to_i==4
        erb:jugar4
        else
        erb:jugar5

    end
end

