require_relative 'livro'
require_relative 'estoque'

def livro_para_newsletter(livro)
	if livro.ano_lancamento < 1999
		puts "Newsletter/Liquidacao"
		puts livro.titulo
		puts livro.preco
		puts livro.possui_reimpressao?
	end
end

algoritmos = Livro.new("Algoritmos", 100, 1998, true)
arquitetura = Livro.new("Introdução a Arquitetura e Design de Software", 70, 2011, true)
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true)
ruby = Livro.new("Programming Ruby", 100, 2004, true)

estoque = Estoque.new
estoque << algoritmos
puts estoque.maximo_necessario
estoque << arquitetura << programmer
puts estoque.maximo_necessario
estoque << ruby
puts estoque.maximo_necessario
estoque.remove algoritmos
puts estoque.maximo_necessario
 estoque.exporta_csv
puts "Total em estoque: #{estoque.total}"
baratos = estoque.mais_baratos_que 80
baratos.each do |livro|
	puts livro.titulo
end
livro_para_newsletter(algoritmos)
