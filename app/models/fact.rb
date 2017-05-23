class Fact < ApplicationRecord
  def self.get_certain_number(number)
    order("RANDOM()").limit(number).select("id, content")
  end

  def self.get_all
    order("RANDOM()").all.select("id, content")
  end
end
