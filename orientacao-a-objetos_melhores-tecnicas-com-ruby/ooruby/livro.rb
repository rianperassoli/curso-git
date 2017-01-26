require_relative "produto"

class Livro
	include Produto

	def initialize(titulo, preco, ano_lancamento, possui_reimpressao, editora, possui_sobrecapa)
		@titulo = titulo
		@ano_lancamento = ano_lancamento
		@possui_reimpressao = possui_reimpressao
		@preco  = calcula_preco(preco)
		@editora = editora
		@possui_sobrecapa = possui_sobrecapa
	end

	def possui_reimpressao?
		@possui_reimpressao
	end

	def matches?(query)
	  ["livro", "impresso"].include?(query)
	end



end
