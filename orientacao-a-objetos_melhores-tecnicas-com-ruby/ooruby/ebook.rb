class EBook
	attr_reader :titulo, :preco, :ano_lancamento, :editora

	def initialize(titulo, preco, ano_lancamento, editora)
		@titulo = titulo
		@ano_lancamento = ano_lancamento
		@preco  = calcula_preco(preco)
		@editora = editora
	end

	def matches?(query)
	  ["ebook", "digital"].include?(query)
	end

	def to_csv
		"#{@titulo},#{@ano_lancamento},#{@preco}"
	end

	private
	def calcula_preco(base)
		if @ano_lancamento < 2006
		  base * 0.95
		elsif @ano_lancamento <= 2010
	    base * 0.96
		else
			base
		end
	end
end
