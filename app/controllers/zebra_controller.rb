class ZebraController < ApplicationController
  def monkey
    render({template: "home_templates/home"})
  end

  def lama
    @num_dice = params.fetch("dynamic").to_i
    @dice_sides = params.fetch("dynamic_num").to_i
    
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@dice_sides)
      @rolls.push(die)
    end
    render({:template => "dice_templates/dice_roll"})
  end
end
