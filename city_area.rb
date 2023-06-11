cities = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

def get_city(cities)
    cities.each { |city, area| puts city  }
end

def get_area(cities, userCity)
    cities.each do |city, area|
        if userCity == city 
            return puts "the area is #{area}"
        end
    end
    return puts 'i valori non sono validi'
end

loop do 
    puts 'ELENCO: '
    get_city(cities)

    print 'inserisci una città per sapere l\'area: '
    userCity = gets.chomp.downcase
    get_area(cities, userCity)

    puts 'inserisci C per continuare oppure Q per interrompere il programma'
    clickStart = gets.chomp.downcase

    if clickStart == 'c'
        next
    else  
        break
    end
end

