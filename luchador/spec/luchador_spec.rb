# ---- DEFINIR COLOR ERROR ---- #
RSpec.configure do |config|
  config.failure_color = :magenta
  config.tty = true
  config.color = true
end
# ----------------------------- #

require '../lib/luchador'         #Incluir el fichero a verificar
require '../lib/fighter'

RSpec.describe Luchador do        #'Luchador' es el nombre de la clase a testear
  let(:luchador1){Luchador.new("Ryu", 100, 30)}     #declarar variable 'luchador1'
  let(:luchador2){Luchador.new("Chun Li", 200, 60)} #declarar variable 'luchador2'

  it '.new crea un nuevo luchador' do
    expect(luchador1).to be_an_instance_of Luchador
    #expect(Luchador.new("Ryu", 100, 30)).to be_an_instance_of Luchador
    #expect(Luchador.new(nombre: "Ryu", salud: 100, fuerza: 30)).to be_an_instance_of Luchador
  end
  it '#nombre devuelve el nombre de un luchador' do
    expect(luchador1.nombre).to eql('Ryu')  
    #expect(Luchador.new("Ryu", 100, 30).nombre).to eql("Ryu")
    #expect(Luchador.new(nombre: "Ryu", salud: 100, fuerza: 30).nombre).to eql("Roman Gonzalez")
  end
  it '#salud devuelve la salud de un luchador' do
    expect(luchador1.salud).to eql(100)  
    #expect(Luchador.new("Ryu", 100, 30).salud).to eql(100)
    #expect(Luchador.new(nombre: "Ryu", salud: 100, fuerza: 30).salud).to eql(100)
  end
  it '#salud= modifica la salud de un luchador' do
    expect(luchador1.salud = 120).to eql(120)
  end
  it '#fuerza devuelve la fuerza de un luchador' do
    expect(luchador2.fuerza).to eql(60)
  end
  it '#atacar se usa para atacar a otro luchador' do
    luchador1.atacar(luchador2)
    expect(luchador2.salud).to eql(170)
  end
end