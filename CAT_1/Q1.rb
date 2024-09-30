def generate_temp_data
  temps = {}
  (1..365).each do |day|
    temps[day] = rand(15..35)
  end
  temps
end

def calc_avg_temp(temps)
  total_temp = temps.values.sum
  total_temp.to_f / temps.size
end

def find_temp_extremes(temps)
  hot_day, hot_temp = temps.max_by { |_day, temp| temp }
  cold_day, cold_temp = temps.min_by { |_day, temp| temp }
  { hot_day: hot_day, hot_temp: hot_temp, cold_day: cold_day, cold_temp: cold_temp }
end

def calc_monthly_avg(temps)
  days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  monthly_avg = {}
  day = 1

  days_in_month.each_with_index do |days, idx|
    month_temps = temps.slice(day, days).values
    monthly_avg[idx + 1] = month_temps.sum.to_f / days
    day += days
  end

  monthly_avg
end

def find_long_heatwave(temps)
  heatwave = 0
  max_wave = 0

  temps.each_value do |temp|
    if temp > 30
      heatwave += 1
    else
      max_wave = [max_wave, heatwave].max
      heatwave = 0
    end
  end
  max_wave
end

def find_long_cold_spell(temps)
  cold_spell = 0
  max_spell = 0

  temps.each_value do |temp|
    if temp < 20
      cold_spell += 1
    else
      max_spell = [max_spell, cold_spell].max
      cold_spell = 0
    end
  end
  max_spell
end

def find_hot_month(monthly_avg)
  monthly_avg.max_by { |_month, avg_temp| avg_temp }.first
end

temps = generate_temp_data
avg_temp = calc_avg_temp(temps)
extremes = find_temp_extremes(temps)
monthly_avg = calc_monthly_avg(temps)
long_heatwave = find_long_heatwave(temps)
long_cold_spell = find_long_cold_spell(temps)
hot_month = find_hot_month(monthly_avg)

puts "Average Temp: #{avg_temp}"
puts "Hottest Day: #{extremes[:hot_day]} (#{extremes[:hot_temp]}°C)"
puts "Coldest Day: #{extremes[:cold_day]} (#{extremes[:cold_temp]}°C)"
puts "Monthly Averages: #{monthly_avg}"
puts "Longest Heatwave: #{long_heatwave} days"
puts "Longest Cold Spell: #{long_cold_spell} days"
puts "Hottest Month: #{hot_month}"
