# Código MAL ESCRITO para corregir en 'luchador.rb' (error en nombre de variables)
def atacar(enemigo)
    enemigo.lose_salud(self.fuerza, enemigo.salud)
end
def lose_salud(enemigo_fuerza, salud)
    self.salud-= enemigo_salud
end

#Escrito de FORMA CORRECTA
def atacar(enemigo)
    enemigo.lose_salud(@fuerza)       #'@fuerza' es una variable del objeto que llama a 'atacar'
end
def lose_salud(mi_fuerza)
    @salud -= mi_fuerza               #'@salud' es una variable del objeto que llama a 'lose_salud'
end