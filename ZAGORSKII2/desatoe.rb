names = []

user_input = nil
while user_input !='' do
    user_input = gets.encode('UTF-8').chomp
    names << user_input
end
for item in names do
    puts 'С нами'+ item
    sleep 1

    if (item == 'Коля') 
        puts 'Коля??? Кто такой Коля?'
        sleep 1
        break
    end
end
puts 'Что это за мужик и где он живет?'
sleep 1
puts 'А вдруг он не курит? А вдруг он не пьет?'
sleep 1
puts 'А мы с такими рожами возьмем да и припремся к Коле...'