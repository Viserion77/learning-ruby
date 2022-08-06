class Carro
  attr_accessor :nome
  attr_reader :marca
  
  def initialize(marca)
    self.marca = marca
  end

  def mostrar
    puts "O nome do carro é #{nome}"
  end
end

carro = Carro.new
carro.nome = 'Fusca'
puts carro.nome
