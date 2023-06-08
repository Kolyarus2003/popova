number  = rand(16)
puts 'Загадано число от 0 до 15, отгадайте какое?'
proba = gets.chomp.to_i

if proba == number 
    abort 'Ура вы выйграли!'
else
    if proba > number
        puts 'Нужно меньше'
    else
        puts 'Нужно больше'
    end
    if (proba - number).abs < 3
        puts 'Тепло'
    else
        pust 'Холодно'
    end
end
proba = gets.chomp.to_i
if proba == number 
    abort ' Ура вы выйграли!'
else
     if proba > number
        puts 'Нужно меньше'
     else
        puts 'Нужно больше'
     end
     if (proba - number).abs < 3 
        puts 'Тепло'
     end
    end       

