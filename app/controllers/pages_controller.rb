class PagesController < ApplicationController
  def calculator
    @flour = params[:flour_grams]
    @water = params[:water_grams]
  end

  def home
  end
end
