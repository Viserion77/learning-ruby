agenda = {
  Ana: '99999-9999',
  Bruno: '88888-8888',
  Viserion: '77777-7777'
}

while true
  puts "\n1 - Adicionar contato"
  puts '2 - Atualizar contato'
  puts '3 - Listar contatos'
  puts '4 - Apagar contato'
  puts '5 - Sair'

  print 'Opção: '
  escolha = gets.to_i

  case escolha
  when 1
    print 'Nome: '
    nome = gets.chomp.to_sym
    
    if agenda[nome].nil?
      print 'Telefone: '
      telefone = gets.chomp
      agenda[nome] = telefone
      puts "Contato #{nome} adicionado com sucesso!"
    else
      puts 'Contato já existe'
    end
  when 2
    print 'Nome: '
    nome = gets.chomp.to_sym
    if agenda[nome]
      print 'Novo telefone: '
      telefone = gets.chomp
      agenda[nome] = telefone
      puts "Contato #{nome} atualizado com sucesso!"
    else
      puts 'Nome não encontrado!'
    end
  when 3
    puts "\nLista de contatos"
    agenda.each do |nome, telefone|
      puts "#{nome}: #{telefone}"
    end
  when 4
    print 'Nome: '
    nome = gets.chomp.to_sym
    if agenda[nome]
      agenda.delete(nome)
      puts "Contato #{nome} apagado com sucesso!"
    else
      puts 'Nome não encontrado!'
    end
  when 5
    puts 'Saindo...'
    break
  else
    puts 'Opção inválida!'
  end
end

puts "\n\nObrigado por utilizar o meu programa!\nViserion77"
