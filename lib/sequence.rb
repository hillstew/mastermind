class Sequence
  attr_reader :code, :guessed

  def initialize
    @code = create_code
    @guessed = false
  end

  def create_code
    ["R", "G", "Y", "B"].sample(4).join()
  end

  def check_guess(guess)
    return check_length(guess) unless true
    count = 0
    guess.split("").each do |letter|
      count += @code.split("").count(letter.upcase)
      require 'pry'; binding.pry
    end
    
    @guessed = true if guess.upcase == code
  end
end
