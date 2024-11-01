class PagesController < ApplicationController
  def calculator
    @dough_weight = params[:dough_weight].to_f
    factor = @dough_weight / 566 * 100
    ingredients = {
      flour_1: 1.0,
      flour_2: 0.25,
      water_1: 0.5,
      water_2: 0.07,
      yolk_1: 0.25,
      yolk_2: 0.45,
      starter_1: 0.25,
      butter_1: 0.25,
      butter_2: 0.69,
      sugar_1: 0.31,
      sugar_2: 0.19,
      honey_2: 0.125,
      salt_2: 0.015,
      candied_fruit_2: 1.3
    }
    @ingredients = {}
    ingredients.each do |ingredient, value|
      @ingredients[ingredient] = value * factor
    end
  end

  def home
  end
end
