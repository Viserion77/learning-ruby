def calcula_vencedor(sua_escolha, pc_escolha)
    resultado = (sua_escolha - pc_escolha) % 3

    if resultado == 0
        return "Empate"
    elsif resultado == 1
        return "Você venceu"
    else
        return "Você perdeu"
    end
end

options = {
    1 => 'Pedra',
    2 => 'Papel',
    3 => 'Tesoura'
}

novo_jogo = 'S'

while novo_jogo == 'S'
    options.each do |key, value|
        puts "#{key}: #{value}"
    end
    
    print 'Escolha uma opção: '
    escolha = gets.chomp.to_i
    
    while options[escolha].nil?
        puts 'Opção inválida'
        print "Escolha uma opção (#{options.keys.join(', ')}): "
        escolha = gets.chomp.to_i
    end
    
    pc_escolha = rand(1..3)
    
    puts "\nVocê escolheu #{options[escolha]}"
    puts "O PC escolheu #{options[pc_escolha]}"
    
    print "\n#{calcula_vencedor(escolha, pc_escolha)}\n" 

    puts 'Deseja jogar novamente? (S/N): '
    novo_jogo = gets.chomp.upcase
end

puts "\n\nObrigado por jogar meu jogo!\nViserion77"
