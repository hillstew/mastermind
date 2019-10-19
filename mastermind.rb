require './lib/game'
require './lib/sequence'

puts "Welcome to Mastermind"

puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
print ">"
response = gets.chomp
sequence = Sequence.new
@game = Game.new(sequence) if response == "p"
# require 'pry'; binding.pry
loop do
  puts @game.sequence.code
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
  puts "What's your guess?"
  print ">"
  guess = gets.chomp
  
  puts @game.sequence.check_guess(guess)

  break if @game.sequence.guessed == true
end
