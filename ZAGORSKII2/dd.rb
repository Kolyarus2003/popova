array = []

puts "Какой длины будет массив?"
number = gets.to_i

index = 0


while index < number do
    array << rand(100)
    index += 1
end

puts array.to_s

max = 0

for item in array do 
    if item > max
        max = item 
    end
end

puts "Наибольшее число: "
puts max.to_s
