require_relative 'Interface'
require_relative 'Abstrato'
require 'singleton'

class classe < Interface
  def menu
    "Menu: "
  end
end

classe = classe.new
classe.menu

class classe < Abstrato
  def menu
    "Menu: "
  end
end

classe = classe.new
classe.menu
classe.opcao

class classe
  include Singleton

  def menu
    "Menu: "
  end

  def opcao
    "Opção: "
  end
end

classe = classe.instance
classe.menu
classe.opcao
