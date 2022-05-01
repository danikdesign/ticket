
puts "Введите ваше имя:"
name = STDIN.gets.encode("UTF-8").chomp.to_s
puts "Введите маршрут поездки (точка А через дефиз точка Б):"
dest = STDIN.gets.encode("UTF-8").chomp.to_s
puts "Введите серию и номер паспорта:"
sn = STDIN.gets.encode("UTF-8").chomp.to_s

ticket = {destination: "#{dest}", passenger: "#{name}", passport: "#{sn}"}

t = Time.now

puts "Билет РМ #{t.year}#{t.month}#{t.day}\n Маршрут: #{ticket[:destination]}\n Пассажир: #{ticket[:passenger]}\n Паспорт:#{ticket[:passport]}"