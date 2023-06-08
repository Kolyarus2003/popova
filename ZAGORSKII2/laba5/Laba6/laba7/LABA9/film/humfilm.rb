if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end
    puts "Здравствуйте, мы узнали кто был главными приступником! Это был Ильич, Добрыня, Юлий, Рембо. Кого вы бы хотели рассекретить?"
    heroes = STDIN.gets.encode("UTF-8").chomp
   # heroes = ARGV[0]
    case heroes
    when 'Ильич'
        puts "Илюша"
    when 'Добрыня'
        puts "Никита"
    when 'Юлий'
        puts "Конь"
    else
        puts "Этот приступник не рассказал о себе"
    end
