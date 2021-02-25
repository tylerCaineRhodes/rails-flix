class Movie < ApplicationRecord
  def isFlop?
    total_gross < 25000000
  end
end
