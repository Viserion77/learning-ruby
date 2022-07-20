
a = 'nossa aula de hoje'
a.gsub!('aula', 'aula 5')

b = 'mesmo!'
c = "#{a} #{b}"

d = ""
d << c

e = a[1, 4]
f = d.scan(/aula/)
g = d.split(' ')
h = d.upcase
i = d.downcase
j = d.capitalize
k = d.delete(' ')
l = d.strip # remove espaços no início e no fim; lstrip e rstrip
m = a.include?('aula')
n = a.index('aula')
o = a.reverse
