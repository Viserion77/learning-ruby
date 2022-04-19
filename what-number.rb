novo_jogo = "S"

puts "Adivinhe o número que eu estou pensando entre 1 e 100: "
seu_numero = gets.to_i
puts "O número que você digitou foi #{seu_numero}!"

while novo_jogo == "s"
  pc_numero = Random.rand(99) + 1
  # puts "O número que eu pensei foi #{pc_numero}!"

  tentativas = 1

  while pc_numero != seu_numero
    if pc_numero > seu_numero
      puts "O número que eu pensei é maior que #{seu_numero}!"
    else
      puts "O número que eu pensei é menor que #{seu_numero}!"
    end

    tentativas += 1

    puts "\nTente novamente: "
    seu_numero = gets.to_i
  end

  puts "\n\nParabéns! Você acertou o número que eu pensei em #{tentativas} tentativas!"

  puts "\n\nDeseja jogar novamente? (S/N)"
  novo_jogo = gets.chomp.upcase
end

puts "\n\n\nObrigado por jogar meu jogo!\nViserion77"