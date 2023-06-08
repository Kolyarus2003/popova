puts 'Какая у вас на руках валютА? 1. ДоллаР 2.РублИ'
curryncy = gets.chomp

puts 'Сколько сейчас стоит 1 доллаР?'
usd_rate = gets.to_f

if curryncy == '1'
    puts 'Сколько у вас рублеЙ?'
    rub = gets.to_f

    usd = (rub / usd_rate).round(2)
    
    puts 'Ваши запасы равнЫ:' + usd.to_s + ' $'
else
    puts 'Сколько у вас доллароВ?'
    usd = gets.to_f

    rub = (usd / usd_rate).round(2)

    puts 'Ваши запасы равнЫ:' + rub.to_s + 'руБ.'
end
