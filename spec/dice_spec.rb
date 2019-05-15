require 'dice'

describe "dice" do 
  let(:dice) {Dice.new}

  #Test initialisition of Dice
  it "returns a dice when the player starts the game" do
    expect(dice).to be_a_kind_of(Dice)   
  end

  #Test that the number returned when one die is played is between 1-6 
  it "returns a number between 1-6 that is random" do
    result = dice.roll(1)
    #this should somehow test for randomness - https://relishapp.com/rspec/rspec-core/v/3-3/docs/command-line/randomization-can-be-reproduced-across-test-runs#passing-the-rspec-seed-to-`srand`-provides-predictable-randomization
    expect(result[0]).to be_between(1, 6)
  end

  #Test that the user can roll multiple dice
  it "can return multiple dice if required" do
    result = dice.roll(3)
    expect(result.count).to eq(3)
  end

  #Test that the total result of the dice roll is added correctly, given a particular set of dice
  it "can return the result of each dice roll" do
    result = dice.roll_result([5,4,3])
    expect(result).to eq(12)
  end

end