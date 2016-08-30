def le_nome
	nome = gets
	puts "Lido #{nome}"
	nome
end

def pede_um_nome
	puts "Digite um nome"
	nome_lido = le_nome
	puts "Pedido!"
	nome_lido
end

def inicio 
	nome = pede_um_nome

	puts "Bem vindo #{nome}"
	puts "Quero conhecer mais alguem..."

	nome2 = pede_um_nome
	puts "Olá #{nome2}"	
end

inicio