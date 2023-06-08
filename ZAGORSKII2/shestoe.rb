puts 'Сколько сейчас стоит 1 доллар в рублях?'
usd_rate = gets.to_f

puts 'Сколько у вас рублей?'
rub = gets.to_f

usd = (rub / usd_rate).round(2)
puts 'Ваши запасы равны:' + usd.to_s + ' $'