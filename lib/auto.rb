class Auto

    def inicializar()
        @xInicial = 0
        @yInicial = 0
        @sentidoInicial = ''
        @movimientos= ''
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
                if @sentidoInicial=='N'
                    @yInicial=@yInicial.to_i + 1
                elsif @sentidoInicial=='O'
                    @xInicial=@xInicial.to_i - 1
                elsif @sentidoInicial=='S'
                    @yInicial=@yInicial.to_i - 1
                elsif @sentidoInicial=='E'
                    @xInicial=@xInicial.to_i + 1
                end
            end
            i+=1
        end
       @vec= [@xInicial,@yInicial,@sentidoInicial]
       @vec.to_a
    end
end