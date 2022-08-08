a = 'Viserion'

a.class
defined? a

def a.mostrar
  "String:" + a
end

a.mostrar

def String.mostrar
  "String:" + self
end

b = 'Jon Snow'
b.mostrar


class Carro
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end

  attr_accessor :marca, :modelo

  def to_s
    "Marca: #{@marca} Modelo: #{@modelo}"
  end

  def self.mostrar
    puts "Carro"
  end
end
def Carro.mostrar
  puts "Carro"
end

carro = Carro.new('Ford', 'Fiesta')

def carro.to_s
  "#{@marca} #{@modelo}"
end

carro.to_s
