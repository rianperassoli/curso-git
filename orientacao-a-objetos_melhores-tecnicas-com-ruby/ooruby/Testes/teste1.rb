class Cliente
  def initialize(nome)
    @nome = nome
  end
  private
  def nome
    @nome
  end
end

puts Cliente.new("guilherme").nome
