class Carro
  def initialize(nome)
    self.nome = nome
  end

  def nome=(nome)
    self.nome = nome
  end

  def nome
    @nome || self.nome
  end

  def mostrar
    puts "O nome do carro é #{nome}"
  end
end

carro = Carro.new
carro.nome = 'Fusca'
puts carro.nome
