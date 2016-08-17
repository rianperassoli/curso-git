puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets
puts "\n"
puts "Começaremos o jogo para você, " + nome
puts "\n"
puts "Escolhendo um número randômico entre 0 e 200..."

numero_randomico = 175

puts "Escolhido. Que tal adivinhar hoje o nosso número secreto?"

puts "\n\n"

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Digite um número"
	chute = gets
	puts "Será que acertou? Você chutou " + chute

	acertou = numero_randomico == chute.to_i

	if acertou
		puts "Acertou!"
		break
	else
		maior = numero_randomico > chute.to_i
		if maior
			puts "Errou! O numero secreto é maior."
		else
			puts "Errou! O numero secreto é menor."
		end
	end
end



