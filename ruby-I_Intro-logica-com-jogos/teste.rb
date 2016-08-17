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