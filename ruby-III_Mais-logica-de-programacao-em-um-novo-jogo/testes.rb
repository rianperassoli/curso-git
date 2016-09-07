bemvindo = -> (nome){
	puts "Bem vindo #{nome}"
}

funcao = bemvindo

funcao.call "Rian"
#ou
funcao.("Rian")