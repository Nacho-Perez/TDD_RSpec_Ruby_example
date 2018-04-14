class Luchador
    attr_accessor :salud, :fuerza
    attr_reader :nombre
    
    def initialize(nombre, salud, fuerza)
        @nombre = nombre
        @salud = salud
        @fuerza = fuerza
    end
=begin    EQUIVALE A LOS ATTR_
    def nombre
        @nombre
    end
    def salud
        @salud
    end 
=end 

    def atacar(enemigo)
        enemigo.salud -= @fuerza    #'@fuerza' es del objeto que llama al método 'atacar'
    end
=begin    FORMA EQUIVALENTE AL MÉTODO ANTERIOR
    def atacar(enemigo)
        enemigo.lose_salud(@fuerza)
    end
    def lose_salud(mi_fuerza)
        @salud -= mi_fuerza
    end
=end
end