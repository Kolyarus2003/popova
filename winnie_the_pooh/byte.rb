if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end 
end

number = 42
puts "В числе #{number} - #{number.size} байт"
string = 'Василий'
puts "В строке \"#{string}\" - #{string.bytesize} байт"