argument = ARGV[0]

if Gem.win_platform? && ARGV[0]
    argument = argument.encode ('UTF-8')
end

if argument == nil
    argument = 'Николай'
end

if argument == 'Дурак'
    puts 'Сам дурак!'
else
    puts "Здравствуй #{argument}!"
end