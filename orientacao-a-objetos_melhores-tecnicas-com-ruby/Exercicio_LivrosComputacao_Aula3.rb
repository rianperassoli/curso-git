class Lista_De_Livros
	attr_reader :lista

	def initialize
		@lista = []
	end

	def add(livro)
	 	@lista << livro
	end

	def quantidade
		unique = []
		@lista.each do |item|
			unique.push(item) unless unique.include?(item)
		end
		unique.length
	end
end

livros_computacao = Lista_De_Livros.new
livros_computacao.add "Agile Web Development with Rails"
livros_computacao.add "Domain Driven Design"
livros_computacao.add "Programming Ruby 1.9"
livros_computacao.add "Agile Web Development with Rails"

puts livros_computacao.quantidade
