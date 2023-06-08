class Film1
    def films
        case FILM
        when 'Джордж Лукас'
            puts A[rand(1)]
        when 'Араки'

            puts B[rand(1)]
            
        when 'Кристофер Нолан'
            puts C[rand(1)]
        else
            puts "Мы не знаем этого режиссёра, нам нечего вам предложить"
        end
    end    
end