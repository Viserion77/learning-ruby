nome = 'Viserion'
def nome.olha
  "teste"
end

puts nome.olha

a = nome.clone # olha works
b = nome.dup # olha doesn't work

class << a
  def olhar
    "teste"
  end
end

puts a.olhar

class Dragon
  def self.fly
    puts "I'm flying"
  end

  class << self
    attr_accessor :race
    def fire
      puts "I'm burning"
    end
  end
end

Dragon.race = 'Wyr'
Dragon.fly
Dragon.fire

module Utilidades
  class Cpf
    class << self
      def validar(cpf)
        cpf.size > 11
      end
    end
  end

  class Cnpj
    class << self
      def validar(cnpj)
        cnpj.size > 14
      end
    end
  end
end

puts Utilidades::Cpf.validar('12345678901')
puts Utilidades::Cnpj.validar('123456789012345')

module Utilidades
  def validar_cpf(cpf)
    cpf.size > 11
  end

  def validar_cnpj(cnpj)
    cnpj.size > 14
  end
end

class Cpf
  include Utilidades
end

class Cnpj
  include Utilidades
end

puts Cpf.validar_cpf('12345678901')
puts Cnpj.validar_cnpj('123456789012345')

a.extend Utilidades
puts a.validar_cpf('12345678901')

String.extend Utilidades
puts String.validar_cpf('12345678901')

class Teste
  class << self
    include Utilidades
  end
end

class Teste2
  extend Utilidades
end

puts Teste.validar_cpf('12345678901')
puts Teste2.validar_cpf('12345678901')

module InstanciaEClasse
  def instancia
    puts "Estou na instancia"
  end

  def self.included(classe)
    classe.extent ClassMethods
  end

  module ClassMethods
    def classe
      puts "Estou na classe"
    end
  end
end

class teste3
  include InstanciaEClasses
end

teste3.new.instancia
teste3.classe
