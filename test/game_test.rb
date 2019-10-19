require 'minitest/autorun'
require './lib/game'

class ComputerTest < Minitest::Test 
  def setup 
    @game = Game.new
  end

  def test_it_exists
    assert_instance_of Game, @game
  end
end