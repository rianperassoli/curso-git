treze = 13
cinco = 5

puts treze / cinco #divisão
puts treze % cinco #resto da divisao
puts treze + cinco #adição
puts treze - cinco #subtração
puts treze * cinco #multiplicação


numero = 5
numero += 1
numero -= 2
numero *= 2
numero /= 4
numero *= 13
numero %= 10
puts numero 



chutes = [50, 150, 300]
for i in 1..chutes.size
  puts "Chute #{i}: #{chutes[i - 1]}"
end


nome=gets.strip
puts nome.size.to_s + " caracteres"
puts "#{nome.size} caracteres"


nome=gets.strip
puts nome.size.to_s + " caracteres"


chutes = [176, 100, 130, 150, 175]

puts chutes[0]
puts chutes[1]
puts chutes[2]
puts chutes[3]
puts chutes[4]

chutes = []

chute = 150
chutes << chute

chute = 180
chutes << chute

chute = 200
chutes << chute

puts chutes.size
for chute in chutes
	puts chute
end


puts 175 == 175
puts 175 == 174

puts 175 == "175"
puts 175 == "175".to_i

puts 175 != "175".to_i

puts 175 > 175
puts 175 < 175
puts 175 >= 175
puts 175 >= 174
puts 175 <= 175
puts 175 <= 174
175.to_i

valor_inicial = 1
valor_final = 3

puts "Vou contar de " + valor_inicial.to_s + " até " + valor_final.to_s
for contar in valor_inicial..valor_final
	puts "Contando: " + contar.to_s
end

=begin

for s in "A".."z"
	puts "Contando " + s
end
=end


