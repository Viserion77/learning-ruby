class Entity
  attr_accessor :energy, :power, :alive

  def initialize(energy, power)
    self.energy = energy
    self.power = power
    self.alive = true
  end

  def is_alive?
    true if self.energy > 0
  end
end

class Monster < Entity
  def initialize
    super(Random.rand(7) + 7, Random.rand(7) + 7)
  end

  def attack(target)
    if target.is_alive?
      attack = Random.rand(self.power)
      target.energy -= attack
      puts "#{self.class} attacked #{target.class} for #{attack} damage."
    else
      puts "#{target.class} is already dead."
    end
  end
end

class Hero < Entity
  attr_accessor :kills

  def initialize
    super(77, 7)
    self.kills = 0
  end

  def attack(target)
    if target.is_alive?
      attack = Random.rand(self.power) + 7
      target.energy -= attack
      puts "#{self.class} attacked #{target.class} for #{attack} damage."
      unless target.is_alive?
        self.kills += 1
        puts "#{target.class} is dead.\n"
      end
    else
      puts "#{target.class} is already dead."
    end
  end
end

odim = Hero.new

while odim.is_alive?
  monster = Monster.new
  puts "A #{monster.class} appeared!"
  while monster.is_alive? && odim.is_alive?
    odim.attack(monster)
    
    if monster.is_alive?
      monster.attack(odim)
    end
  end
  puts "You killed #{monster.class}!"
end

puts "You died.\n"
puts "You killed #{odim.kills} monsters."

puts "\n\nThanks for playing my game!\nViserion77"
puts 'Press enter to exit.'
gets
