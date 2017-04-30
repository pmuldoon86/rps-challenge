require_relative 'computer'
class Player
  attr_reader :name, :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def attack_with_rock(computer)
    if Computer::WEAPONS.sample == :scissors
      @score += 1
    elsif Computer::WEAPONS.sample == :paper
      computer.score += 1
    end
  end

  def attack_with_paper(computer)
    @score += 1
  end

  def attack_with_scissors(computer)
    @score += 1
  end
end
