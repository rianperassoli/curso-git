def avisa_campeao_atual(rank)
	puts "Nosso campeão atual é #{rank[0]} com #{rank[1]} pontos."
end

def avisa_pontos_totais(pontos_totais)
	puts "Você possui #{pontos_totais} pontos." 
end

def avisa_chute_efetuado(chute)
	puts "Você já chutou #{chute.upcase}"
end

def avisa_letra_nao_encontrada
	puts "Letra não encontrada!"
end

def avisa_letra_encontrada(total_encontrado)
	puts "Letra encontrada #{total_encontrado} vezes!"
end

def avisa_acertou_palavra
	puts "Parabéns! Acertou!"
end

def avisa_errou_palavra
	puts "Que pena... Errou!"
end

def avisa_pontos(pontos_ate_agora)
	puts "Você ganhou #{pontos_ate_agora} pontos."
end

def da_boas_vindas
	puts "/*****************/"
	puts "/* Jogo da forca */"
	puts "/*****************/"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n\n\n\n"
	puts "Começaremos o jogo para você, #{nome}"
	nome
end

def exibe_forca(cabeca, bracos, corpo, pernas)
	puts "  ______         \n"
	puts " |/     |        \n"
	puts " |     #{cabeca} \n"
	puts " |     #{bracos} \n"
	puts " |      #{corpo} \n"
	puts " |     #{pernas} \n"
	puts " |               \n"
	puts "_|               \n"
	puts "\n\n"
end

def desenha_forca(erros)
	cabeca = "   "
	bracos = "   "
	pernas = "   "
	corpo = " "

	if erros >= 1
		cabeca = "(_)" 
	end
	if erros >= 2 
		bracos = " | "
		corpo = "|"
	end
	if erros >= 3
		bracos = "/|\\"
	end
	if erros >= 4 
		pernas = "/ \\"		
	end

	exibe_forca cabeca, bracos, corpo, pernas
end

def nao_quer_jogar?
	puts "Deseja jogar novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

def cabecalho_de_uma_tentativa(chutes, erros, mascara)
	puts "\n"
	desenha_forca erros
	puts "Palavra secreta: #{mascara.upcase}"
	puts "Erros até agora: #{erros}"
	puts "Chutes até agora: #{chutes}"
end

def pede_um_chute	
	puts "Entre com a letra ou a palavra"
	chute = gets.strip.downcase
	puts "Será que você acertou? Você chutou #{chute.upcase}"
	chute
end

def avisa_escolhendo_palavra 
	puts "Escolhendo uma palavra..." 
end

def avisa_palavra_escolhida(palavra_secreta)
	puts "Escolhida uma palavra com #{palavra_secreta.size} letras... Boa sorte!"	
	palavra_secreta
end
 
