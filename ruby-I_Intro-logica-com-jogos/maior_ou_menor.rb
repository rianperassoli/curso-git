puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets
puts "\n"
puts "Começaremos o jogo para você, " + nome
puts "\n"
puts "Escolhendo um número randômico entre 0 e 200..."

numero_randomico = 175

puts "Escolhido. Que tal adivinhar hoje o nosso número secreto?"
puts "\n\n\n\n"
puts "Tentativa 1"
puts "Digite um número"
chute = gets
puts "\n\n"
puts "Será que acertou? Você chutou " + chute

puts chute.to_i == numero_randomico