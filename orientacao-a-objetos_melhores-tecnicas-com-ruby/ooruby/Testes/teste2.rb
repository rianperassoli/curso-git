module Gerador
  private
  def gera_codigo
    "gerador original"
  end
end

class Cliente
  include Gerador

  def gera_codigo
    "novo gerador"
  end
end

puts Cliente.new.gera_codigo
