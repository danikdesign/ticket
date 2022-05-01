=begin puts "Введите ваше имя:"
name = gets.chomp.to_s
puts "Введите маршрут поездки (точка А через дефиз точка Б):"
dest = gets.chomp.to_s
puts "Введите серию и номер паспорта:"
sn = gets.chomp.to_s

ticket = { destination: "#{dest}", passenger: "#{name}", passport: "#{sn}" }

t = Time.now

puts "Билет РМ #{t.year}#{t.month}#{t.day}\n Маршрут: #{ticket[:destination]}\n Пассажир: #{ticket[:passenger]}\n Паспорт:#{ticket[:passport]}"
=end


###version 2.0###
passengers = [
  {
    ticket_number: 'РМ2010398 050298',
    first_name: 'Венедикт',
    second_name: 'Васильевич',
    last_name: 'Ерофеев',
    passport_number: '45 99 505281',
    departure_city: 'Москва',
    destination_city: 'Петушки'
  },
  {
    ticket_number: 'РМ2010399 050298',
    first_name: 'Иннокентий',
    second_name: 'Петрович',
    last_name: 'Шниперсон',
    passport_number: '46 01 192872',
    departure_city: 'Павловский Посад',
    destination_city: 'Орехово-Зуево'
  },
  {
    ticket_number: 'РМ2010399 050298',
    first_name: 'Иван',
    second_name: 'Васильевич',
    last_name: 'Бунша',
    passport_number: '47 33 912876',
    departure_city: 'Москва',
    destination_city: 'Владимир'
  }
]

puts 'Пассажиры поезда Москва — Петушки'
puts

# Для каждого пассажира в массиве распечатаем его билет, воспользовавшись
# методом массива each_with_index.
passengers.each_with_index do |passenger, number|
  puts "* * * Место № #{number + 1} * * *"
  puts "Билет № #{passenger[:ticket_number]}"
  puts "Маршрут: #{passenger[:departure_city]} -> " \
    "#{passenger[:destination_city]}"
  puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. " \
    "#{passenger[:last_name]}"
  puts "Паспорт: #{passenger[:passport_number]}"
  puts
end
