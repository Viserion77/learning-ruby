novo_jogo = "S"
palavras = %w{ espada arco faca machado facão foice besta canivete }

while novo_jogo == "S"
    palavra_escolhida = palavras.sample
    palavra_tamanho = palavra_escolhida.length
    # print palavra_escolhida

    # print não adiciona quebra de linha
    print "Descubra a palavra que eu pensei: "

    # palavra_parcial = []
    # palavra_tamanho.times do
    #   palavra_parcial << " _ "
    # end
    palavra_parcial = Array.new(palavra_tamanho, " _ ")
    print palavra_parcial.join

    fim = false

    while fim == false
        print "\nDigite uma letra: "
        sua_letra = gets.chomp.downcase

        palavra_escolhida.each_char.with_index do |letra, index|
            if letra == sua_letra
                palavra_parcial[index] = sua_letra
            end
        end

        # if palavra_parcial.join.count(' _ ') > 0
        if palavra_parcial.include? " _ "
            print palavra_parcial.join
        else
            fim = true
        end
    end

    puts "\n\nParabéns! Você acertou a palavra! :)"
    puts "A palavra era #{palavra_escolhida}\n\n"

    print "Deseja jogar novamente? (S/N): "
    novo_jogo = gets.chomp.upcase
end

puts "\n\n\nObrigado por jogar meu jogo!\nViserion77"