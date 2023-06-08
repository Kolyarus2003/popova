
names = ['Камень', 'Ножницы', 'Бумага']

computer_choice = rand(3)

puts 'введите вариант: 0 - камень, 1 - ножницы, 2 - бумага'

user_choice = gets.to_i

puts 'КомПьютер выбрал: ' + names[computer_choice]

puts 'Вы выБрали: ' + names[user_choice]


if user_choice == computer_choice
  puts 'НиЧья'
elsif user_choice == 0 && computer_choice == 1 
  puts 'Победили Вы'
elsif user_choice == 1 && computer_choice == 2 
  puts 'Победили Вы'
elsif user_choice == 2 && computer_choice == 0 
  puts 'Победили Вы'
else 
  puts 'Победил Компьютер'
end