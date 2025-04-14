require "minitest/autorun"

require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test
  def setup
    $stdout = StringIO.new
  end

  def test_has_a_capitalized_name
    player = Player.new("tommy")

    assert_equal "Tommy", player.name
  end

  def test_has_an_initial_health
    player = Player.new("tommy", 50)

    assert_equal 50, player.health
  end

  def test_computes_score_as_sum_of_health_and_length_of_name
    player = Player.new("tommy")

    assert_equal 105, player.score
  end

  def test_has_a_string_representation
    player = Player.new("tommy")

    assert_equal "I'm Tommy with a health of 100 and a score of 105", player.to_s
  end

  def test_boost_increases_health_by_15
    player = Player.new("tommy")

    player.boost

    assert_equal 115, player.health
  end

  def test_drain_decreases_health_by_10
    player = Player.new("tommy")

    player.drain

    assert_equal 90, player.health
  end
end