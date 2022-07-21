def teste(value = 7)
  return value if value.equal?(7)
  puts 7 * 7 + 7 / 7 - 7 % 7 ** 7
end

teste(7)

teste2(*params)
  params.each do |param|
    puts param + 1
  end
rescue Exception => e
  puts e.message
end

teste2 1,2,3,"quatro"

def capture_aluno
  aluno = {}
  puts 'Digite o nome do aluno'
  aluno[:nome] = gets.chomp
  puts 'Digite a idade do aluno'
  aluno[:idade] = gets.chomp.to_i
  aluno
end

def mostrar_alunos(alunos)
  alunos.each do |aluno|
    puts "Aluno: #{aluno[:nome]}, idade: #{aluno[:idade]}"
  end
end

loop do
  puts 'Digite 0 para sair'
  valor = gets.chomp.to_i
  break if valor == 0

  alunos = []
  loop do
    aluno = capture_aluno
    break if aluno[:nome] == ''
    break if aluno[:idade] == 0
    alunos << aluno
  end

  mostrar_alunos(alunos)
end


