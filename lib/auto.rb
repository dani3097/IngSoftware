class Auto

    def initialize(lx, ly)
        @xInicial = 0
        @yInicial = 0
        @sentidoInicial = ''
        @movimientos= ''
        @limiteX = lx
        @limiteY = ly
    end

    def ingresarDatos(x,y,s,m)
        @xInicial = x
        @yInicial = y
        @sentidoInicial = s
        @movimientos= m
    end

    def obtenerX()
        @xInicial
    end

    def obtenerY()
        @yInicial
    end

    def obtenerSentido()
        @sentidoInicial
    end
    
    def obtenerMovimientos()
        @movimientos
    end 

    def mover()
        for i in (0.. @movimientos.length) 
            if @movimientos[i]=='I'
                if @sentidoInicial=='N'
                   @sentidoInicial='O'
                elsif @sentidoInicial=='O'
                    @sentidoInicial='S'
                elsif @sentidoInicial=='S'
                    @sentidoInicial='E'
                elsif @sentidoInicial=='E'
                    @sentidoInicial='N'
                end
            end
            if @movimientos[i]=='D'
                if @sentidoInicial=='N'
                   @sentidoInicial='E'
                elsif @sentidoInicial=='E'
                    @sentidoInicial='S'
                elsif @sentidoInicial=='S'
                    @sentidoInicial='O'
                elsif @sentidoInicial=='O'
                    @sentidoInicial='N'
                end
            end
            if @movimientos[i]=='A'
                if @sentidoInicial=='N' && Integer(@yInicial) < Integer(@limiteY) 
                    @yInicial=@yInicial.to_i + 1
                elsif @sentidoInicial=='O' && Integer(@xInicial) > 0
                    @xInicial=@xInicial.to_i - 1
                elsif @sentidoInicial=='S' && Integer(@yInicial) > 0
                    @yInicial=@yInicial.to_i - 1
                elsif @sentidoInicial=='E'&& Integer(@xInicial) < Integer(@limiteX)
                    @xInicial=@xInicial.to_i + 1
                end
            end
            i+=1
        end
       @vec= [@xInicial,@yInicial,@sentidoInicial]
       @vec.to_a
    end
end