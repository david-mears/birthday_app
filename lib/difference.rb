def difference(month: 1, day: 1)
  require 'time_difference'
  start_time = Time.new
  end_time = Time.new((Time.new.year+1),month,day)
  difference = TimeDifference.between(end_time, start_time)
  if difference.humanize =~ /1 Year/
    end_time = Time.new(Time.new.year,month,day)
    difference = TimeDifference.between(end_time, start_time)
  end
  return difference.humanize
end
