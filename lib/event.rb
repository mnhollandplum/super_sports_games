require 'pry'
class Event
    attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    @ages.sum/@ages.length.to_f
  end

  def standard_deviation_age
    sum_squared = squared_ages.sum
    squared_divide = sum_squared/@ages.length
    Math.sqrt(squared_divide).round(2)
  end

  def minus_average_age
    @ages.map do |age|
      (age - average_age).round(1)
    end
  end

  def squared_ages
    minus_average_age.map do |age|
      (age **2).round(2)
    end
  end

end
