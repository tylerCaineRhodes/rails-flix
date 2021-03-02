class Movie < ApplicationRecord
  def self.released
    where("released_on < ?", Time.now).order("released_on desc")
  end

  def self.hits
    where("total_gross >= ?", 300_000_000).order("total_gross desc")
  end

  def self.flops
    where("total_gross < ?", 225_000_000).order("total_gross asc")
  end

  def self.recentlyAdded
    order("created_at desc").limit(3)
  end

  def isFlop?
    total_gross < 25000000
  end
  
end
