class Game
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
    @start_time = Time.now
    @guess_count = 0
  end

  def end_time 
    end_time = Time.now
    difference = end_time - @start_time
    difference
  end
end