require 'byebug'
# debugger

# h = {}
# puts "string".class
# puts 7.class
# puts 7.class.superclass
# puts 7.class.superclass.superclass
# puts 7.7.class
# puts 7.7.class.superclass
# puts nil.class
# puts h.class
# puts :symbol.class
# puts [].class
# puts (7..77).class

a = 7
puts "a #{a.class}"

@a = 7
puts "@a #{@a.class}"

@@a = 7
puts "@@a #{@@a.class}"

$a = 7
puts "$a #{$a.class}"

A = 7
puts "A #{A.class}"

def teste
  puts @a
end

teste

class teste
  def initialize
    @a = 7
  end

  @@a = 7

  def a
    @@a
  end
end

puts Teste.new.a