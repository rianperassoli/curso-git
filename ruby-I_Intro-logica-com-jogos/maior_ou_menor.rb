def dar_boas_vindas
	puts "Bem vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n"
	puts "Começaremos o jogo para você, #{nome}"
end

def sorteia_numero_randomico
	puts "Escolhendo um número randômico entre 0 e 200..."
	sorteado = rand(200)
	puts "Escolhido. Que tal adivinhar hoje o nosso número secreto?"	
	sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
	puts "\n\n"
	puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
	puts "Chutes até agora: #{chutes}"
	puts "Digite um número"
	chute = gets.strip
	puts "Será que acertou? Você chutou #{chute}"
	return chute.to_i
end

def verifica_se_acertou(numero_randomico, chute)
	acertou = numero_randomico == chute

	if acertou
		puts "Acertou!"
		return true
	end

	maior = numero_randomico > chute
	if maior
		puts "Errou! O numero secreto é maior."
	else
		puts "Errou! O numero secreto é menor."
	end		
	false
end

dar_boas_vindas	

numero_randomico = sorteia_numero_randomico

limite_de_tentativas = 5
pontos_ate_agora = 1000

chutes = []

for tentativa in 1..limite_de_tentativas

	chute = pede_um_numero chutes, tentativa, limite_de_tentativas

	pontos_a_perder = (chute - numero_randomico).abs / 2.0
	pontos_ate_agora -= pontos_a_perder

	chutes << chute	

	if verifica_se_acertou numero_randomico, chute
		break
	end
end

puts "Você ganhou #{pontos_ate_agora} pontos."