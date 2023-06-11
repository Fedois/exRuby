users = [
    {:username => 'fede', :password => 'ciao'},    
    {:username => 'eli', :password => 'ciao1'},
    {:username => 'lollo', :password => 'ciao2'},
    {:username => 'iana', :password => 'ciao3'},
    {:username => 'ale', :password => 'ciao4'},
]

def authenticator (name, psw, users) 
    for user in users
        if user[:username] == name && user[:password] == psw
            puts 'BENVENUTO'
            return flag = true
        end
    end
    return flag
end

attemps = 0
flag = false
while attemps < 4
    print 'inserisci username: '
    name = gets.chomp 
    print 'password: '
    psw = gets.chomp
    
    flag = authenticator(name, psw, users)
    
    break if flag == true 
    attemps += 1
    break if attemps == 3
    puts 'username o password sono sbagliate. clicca C per continuare'
    click = gets.chomp.to_s
    next if click == 'c'
    loop do
        puts 'valori non validi, inserisci C'
        click2 = gets.chomp.to_s 
        break if click2 == 'c'
    end
end

if attemps == 3 && flag == false
    puts 'hai finito i tentativi!!!!!!!'
end



