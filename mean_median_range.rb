def remove_nil_values(values)
	for value in values
		if value == 0
			values.delete(value)
		end
	end
	values
end

def find_median(array)
  sorted = array.sort
  len = sorted.length
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2
end

def convert_secs_to_hours_mins(t)
	Time.at(t).utc.strftime("%H:%M:%S")
end

def stat(althete_times)
	#split the string
	times = althete_times.split(',')
	total_times_in_secs = []
	#loop tru the string
	if althete_times == ''
		return ''
	end
	for time in times
		if time == nil or time == ''
			next
		end
		#parse out h, m, s
		h, m, s = time.split('|')

		#convert h and m to seconds
		h_to_sec = h.to_i * 3600
		m_to_sec = m.to_i * 60
		sec = s.to_i

		#add the sums together to have five sums in seconds
		time_in_sec = h_to_sec + m_to_sec + sec
		total_times_in_secs << time_in_sec
		
	end
	average = total_times_in_secs.inject(:+) / total_times_in_secs.length
	median = find_median(total_times_in_secs)
	#remove null values
	total_times_sec_removed_nils = remove_nil_values(total_times_in_secs)
	#find the range, average, and median
	range = total_times_sec_removed_nils.max - total_times_sec_removed_nils.min
	#convert second into h, m, s
	print 'Range: ', convert_secs_to_hours_mins(range), ' Average: ', convert_secs_to_hours_mins(average), ' Median: ', convert_secs_to_hours_mins(median)
	
end



stat("nil, '', 01|17|20, 1|32|34, 2|17|17")
