
class TempTracker


  def initialize
    @max = 1 / 0.0    # Infinity
    @min = -1 / 0.0   # -Infinity

    @num_of_temps = 0
    @sum_of_temps = 0

    @list_occurences = [0] * 111 #111 degrees max
    @max_occurence = nil
    @mode = nil

  end

  def insert(temp)
    @max = temp if temp > @max
    @min = temp if temp < @min

    @num_of_temps += 1
    @sum_of_temps += temp

    @list_occurences[temp] += 1
    if @list_occurences[temp] > @max_occurence
      @mode = temp
    end
  end

  def get_max
    return @max
  end

  def get_min
    return @min
  end

  def get_mean
    @mean = @sum_of_temps / @num_of_temps
    return @mean
  end

  def get_mode
    return @mode
  end
end
