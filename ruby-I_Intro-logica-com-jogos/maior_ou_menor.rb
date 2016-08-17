def dar_boas_vindas
	puts "Bem vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"
	nome = gets
	puts "\n"
	puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_randomico
	puts "Escolhendo um número randômico entre 0 e 200..."
	sorteado = 175
	puts "Escolhido. Que tal adivinhar hoje o nosso número secreto?"	
	sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
	puts "\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Digite um número"
	chute = gets
	puts "Será que acertou? Você chutou " + chute
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

for tentativa in 1..limite_de_tentativas
	
	chute = pede_um_numero tentativa, limite_de_tentativas

	if verifica_se_acertou numero_randomico, chute
		break
	end
end