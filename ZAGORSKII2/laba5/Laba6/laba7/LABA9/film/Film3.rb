
if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end
puts "Здравствуйте, сегодня мы подготовили фильмы 3 режиссёров. Крис Коламбус, Питер Джексон, Жерар Пирес. Фильмы какого режиссёра вы хотите посмотреть?"
hum = gets.encode("UTF-8").chomp
A = [
    "Гарри Поттер"
]
B = [
    "Властелин колец"
]
C = [
    "Такси"
]

case hum
when 'Крис Коламбус'
    puts A[rand(1)]
when 'Питер Джексон'
    puts B[rand(1)]
when 'Жерар Пирес'
    puts C[rand(1)]
else
    puts "Мы не знаем этого режиссёра, нам нечего вам предложить"
end