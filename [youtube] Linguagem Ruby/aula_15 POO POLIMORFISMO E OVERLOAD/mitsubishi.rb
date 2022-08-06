require_relative 'Carro'

class Mitsubishi < Carro
  attr_accessor :cor

  def initialize(nome, cor)
    super(nome)
    self.cor = cor
  end

  def ligar_carro
    puts "O carro está ligado"
  end

  def ir_para_frente
    sair_do_lugar
  end

  def mostrar
    super
    puts "Cor: #{self.cor}"
  end

  private

  def sair_do_lugar
    andar
  end
end