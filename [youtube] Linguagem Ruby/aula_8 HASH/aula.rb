a = { nome: 'viserion', idade: 77 }
b = { :nome => 'viserion', :idade => 77 }
c = {}
c[:nome] = 'viserion'
c[:idade] = 77
d = { 'nome' => 'viserion', 'idade' => 77 }

a[:nome]
b[:nome]

d.deep_symbolize_keys

loop do
  puts 'Digite 0 para sair'
  valor = gets.chomp.to_i
  break if valor == 0

  alunos = []
  loop do
    aluno = {}

    puts 'Digite o nome do aluno'
    aluno[:nome] = gets.chomp
    break if aluno[:nome] == ''

    puts 'Digite a idade do aluno'
    aluno[:idade] = gets.chomp.to_i
    break if aluno[:idade] == 0

    alunos << aluno
  end

  alunos.each do |aluno|
    puts "Aluno: #{aluno[:nome]}, idade: #{aluno[:idade]}"
  end
end
