RSpec.configure do |config|
  config.failure_color = :magenta
  config.tty = true
  config.color = true
end

RSpec.describe "#hola" do
  it 'saluda a una persona con su nombre' do
    expect(hola('mundo')).to eql('Hola mundo')
  end
end

def hola(nombre)
    "Hola #{nombre}"
end