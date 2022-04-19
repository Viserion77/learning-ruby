# Execute isto tudo no terminal (irb)
a = 1
a
b = 2
puts a
# nil == null
nome = "Viserion"
nome
linguagem = "Ruby"
valor = 1.5
valor
2 + 2
3 * 5
a + b
#  ctrl + l
9 / 3
5 / 2
# para retornar o resto da divisão precisa ter um numero flutuante
5.0 / 2
9 / 2.0

if a == 1
  puts "a é igual a 1"
end

if a == 2
  puts "a é igual a 2"
end

if a != 2
  puts "a é diferente de 2"
end

if a == 2
  puts "a é igual a 2"
else
  puts "a é diferente de 2"
end

if nome == "Viserion"
  puts "O nome é Viserion"
elsif nome == "Viserion77"
  puts "O nome é Viserion77"
else
  puts "O nome é diferente de Viserion"
end

cont = 1
while cont <= 10
  puts "Contador: #{cont}"
  cont += 1
end

10.times do puts "Olá Mundo!" end

puts 'Olá #{nome}'
puts "Oi #{linguagem}"

cont
cont -= 2
