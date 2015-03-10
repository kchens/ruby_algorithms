# input:    [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]

# process:    [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
# a.sort_by {|arr| arr[0]} - [[0, 1], [3, 5], [4, 8], [9, 10], [                  10, 12] ]


# output:   [[0, 1], [3, 8], [9, 12]]

# process:
# starting = [0, 3, 4, 10, 9]
# ending =   [1, 5, 8, 12, 10]
# if ending time is greater than or equal to the start-time of the next time, then combine time1's start with time2's ending

def condense_calendar_dates(times)
  times = times.sort_by { |time| time[0] }
  new_times = [times[0]]

  times.each do |time|
    current = time
    last = new_times.pop
    if current == last
      new_times.push(current)
    elsif last[1] >= current[0] && last[1] < current[1]
      start = last[0]
      finish = current[1]
      m_time = [ start, finish ]
      new_times.push(m_time)
    else
      new_times.push(last)
      new_times.push(current)
    end
  end
  return new_times
end



p condense_calendar_dates([[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]) == [[0, 1], [3, 8], [9, 12]]

def condense_calendar_dates(times)
  times = times.sort_by { |time| time[0] }
  new_times = [times[0]]

  times.each do |time|
    current = time
    last = new_times.pop
    if current == last
      new_times.push(current)
    elsif last[1] >= current[0] && last[1] < current[1]
      m_time = [ last[0], current[1] ]
      new_times.push(m_time)
    elsif last[1] > current[0] && last[1] >= current[1]
      new_times.push(last)
    else
      new_times.push(last)
      new_times.push(current)
    end
  end
  return new_times
end

def condense_calendar_dates(times)
  times = times.sort_by { |time| time[0] }
  new_times = []

  previous_time_start, previous_time_end = times[0]

  for current_time_start, current_time_end in times do
    if previous_time_end >= current_time_start
      previous_time_end = [previous_time_end, current_time_end].max
    else
      new_times.push([previous_time_start, previous_time_end])
      previous_time_start, previous_time_end = current_time_start,current_time_end
    end
    new_times.push([previous_time_start, previous_time_end]) if new_times.last != [previous_time_start, previous_time_end]
  end
  return new_times
end


p condense_calendar_dates([[1, 5], [2, 3]]) == [[1,5]]
p condense_calendar_dates([[1, 10], [2, 6], [3, 5], [7,9]]) == [[1,10]]
