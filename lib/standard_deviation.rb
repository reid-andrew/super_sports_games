# ages = [24, 30, 18, 20, 41]

class Standard_Deviation
  def initialize(input)
    @input = input
    @sum = 0.0
    @count = 0.0
    @mean = 0.0
    @input_minus_mean = []
    @sum_squared = 0.0
    @sum_squared_divided = 0.0
    @std_dev = 0.0
  end

  def standard_deviation
    @input.each do |num|
      @sum += num
      @count += 1.0
    end

    @mean = @sum / @count

    @input.each do |num|
      @input_minus_mean << num - @mean
    end

    @input_minus_mean.each do |num|
      num = num * num
      @sum_squared += num
    end

    @sum_squared_divided = @sum_squared / @count

    @std_dev = Math.sqrt(@sum_squared_divided).round(2)
  end
end
