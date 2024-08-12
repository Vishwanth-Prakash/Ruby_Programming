f_n = 0
s_n = 1
10.times do
  puts f_n
  f_n, s_n = s_n, f_n+s_n
end