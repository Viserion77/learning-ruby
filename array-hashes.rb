# Execute isto tudo no terminal (irb)
frutas = ['uva', 'pera', 'banana', 'laranja']
frutas
frutas[0]
frutas[1]

frutas << 'maçã'
frutas.push('manga')
frutas[6] = 'abacaxi'
frutas.insert(7, 'morango')

frutas.pop # apaga o ultimo elemento
frutas.pop(2) # apaga os últimos 2 elementos
frutas.delete('uva') # apaga o elemento uva
frutas.delete_at(0) # apaga o elemento na posição 0
frutas.delete_if { |fruta| fruta.length > 5 } # apaga todos os elementos com mais de 5 caracteres

frutas.size
frutas.length
frutas.count
frutas.count('uva') # conta quantas vezes aparece a palavra uva

puts 'o elemento existe na lista? ' if frutas.include? 'uva'

frutas.each do |fruta|
  puts "Fruta: #{fruta}"
end

frutas.reverse
frutas.reverse_each do |fruta|
  puts "Fruta: #{fruta}"
end

array = %w{ Ruby Java Python }
array
a = [nil, 1, '2', 3.4, {'cinco' => 6}, [7], true]

pessoa = { 'nome' => 'Viserion', 'idade' => '21', 'cidade' => 'Jaraguá do Sul' }
pessoa['nome']

pessoa.each do |chave, valor|
    puts "O valor para a chave #{chave} é #{valor}."
end

pessoa.keys
pessoa.values
