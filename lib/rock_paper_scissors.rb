require('pry')

class String
    define_method(:beats) do |argument|
        if argument == "computer"
          int=rand(3)
          weapons = {0=>"rock", 1=>"paper", 2=>"scissors"}
          argument = weapons.fetch(int)          
        end
        player1 = self
        player2 = argument
        if player1 == "rock"
            if player2 == "rock"
                return "Ties with"
            elsif player2 == "paper"
                return "Loses to"
            elsif player2 == "scissors"
                return "Wins"
            end
        elsif player1 == "paper"
            if player2 == "rock"
                return "Wins"
            elsif player2 == "paper"
                return "Ties with"
            elsif player2 == "scissors"
                return "Loses to"
            end
        elsif player1 == "scissors"
            if player2 == "rock"
                return "Loses to"
            elsif player2 == "paper"
                return "Wins"
            elsif player2 == "scissors"
                return "Ties with"
            end
        end
    end
end
