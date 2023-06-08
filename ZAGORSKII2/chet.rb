cars = [
  'Ford',
  'Mercedes',
  'Bugatti',
  'Lamborgini',
  'Mazda',
  'Toyota',
  'Lexus',
  'Nissan'
]

puts 'У нас всего ' + cars.size.to_s + ' машин. Вам какую?'

number = gets.to_i - 1

if number >= 0 && number < cars.size

  puts 'Поздравляем, вы получили:'
  puts cars[number]
else

  puts 'Извините, машины с таким номером у нас нет :('
end