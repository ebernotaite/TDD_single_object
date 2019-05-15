class Dice

  def roll(number)
    result_dice = []   
    number.times do
      result = rand(1..6)   
      result_dice << result
    end
    result_dice
  end

  def roll_result(result_dice)
    result_dice.inject(0) { | sum, x | sum + x }
  end
end

puts Dice.new.roll(1)