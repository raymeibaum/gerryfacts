class Fact < ApplicationRecord
  def self.get_certain_number(number)
    order("RANDOM()").limit(number)
  end

  def self.get_all
    order("RANDOM()").all
  end
end
