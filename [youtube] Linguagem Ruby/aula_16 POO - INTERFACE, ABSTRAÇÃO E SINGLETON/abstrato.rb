class Abstrato
  def initialize
    raise 'Não é possível instanciar a classe Interface'
  end

  def menu
    raise 'Método abstrato'
  end

  def opcao
    "Opção: "
  end
end
