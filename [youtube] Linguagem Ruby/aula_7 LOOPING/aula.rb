top = 4
now = 0

while now < top
  puts "now = #{now}"
  now += 1
end

puts "now = #{now}" while now < top
puts "now = #{now}" until now > top

loop do
  puts "now = #{now}"
  now += 1

  next if now == top
  break if now > top
end

5.times { |i| puts "now = #{i}" }

for i in 0..7
  puts "now = #{i}"
end

(1...7).each { |i| puts "now = #{i}" }

[1, 2, 3, 4, 5, 6, 7].select { |i| puts i.even? }

[1, 2, 3, 4, 5, 6, 7].mpa { |i| "#{i} is even? #{i.even?}" }
