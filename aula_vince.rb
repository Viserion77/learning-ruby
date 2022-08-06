
a = 100
a.class
a.class.class
a.class.class.class
a.public_methods
a.private_methods
a.odd?
a.even?

serie = "Game off Thrones"

serie.sub("off", "of")
serie

serie.sub!("off", "of")
serie

class Integer
  def positivo?
    self > 0
  end

  def negativo?
    self < 0
  end
end

100.positivo?

JSON.parse({}.to_json).deep_symbolize_keys


===============================
Account.first
[1, 2, 3].last
[1, 2, 3].first
Account
Account(1)
a = new Account(1)
a = new Account
a = Account.find(1)
a.name
a
pp a
b = Account.where(language: 'pt-BR')
b.where(id: 1)
b.or(Account.where(id: 2))
b.to_a
b.size
b.count
b.limit(2)
b.to_a
b
b.order(name: :desc)
1.to_sym
1.to_s.to_sym
f= {a:1}
f.a
f:a
f.:a
f.:"a"
f."a"
agenda = {\
  :Ana => '99999-9999',\
  Bruno: '88888-8888',\
  "Viserion" => '77777-7777'\
}
agenda.keys
agenda = {\
  :Ana => '99999-9999',\
  Bruno: '88888-8888',\
  "Viserion" => '77777-7777',\
}
teste = 123
agenda = {\
  :Ana => '99999-9999',\
  Bruno: '88888-8888',\
  "Viserion" => '77777-7777',\
}
agenda = {\
  :Ana => '99999-9999',\
  Bruno: '88888-8888',\
  "Viserion" => '77777-7777',\
}
\
}
agenda.from_json
agenda
agenda!
agenda.from_json!

JSON.parse(agenda.to_json).deep_symbolize_keys
teste = JSON.parse(agenda.to_json).deep_symbolize_keys
teste:Ana
teste[:Ana]
history
quit


exec -l $SHELL

sudo apt install libsqlite3-dev


#!ruby

def metodo(*args)
  pp args
end

metodo_instance = Proc.new do |*args|
  pp args
end

metodo_lambda_oneliner = ->(*args) { pp args }

metodo_lambda = lambda do |*args|
  pp args
end


class ListaDoJeferson
  def initialize(values)
    @values = values
  end

  def each(&block)
    block.call
  end
end