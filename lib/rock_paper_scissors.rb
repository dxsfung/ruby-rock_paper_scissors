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
        result = {}
        if player1 == "rock"
            if player2 == "rock"
              result[:display]= "Ties with"
              result[:boolean]= false
              result[:player2]= "rock"
                return result
            elsif player2 == "paper"
                # return "Loses to"
                result[:display]= "Loses to"
                result[:boolean]= false
                result[:player2]= "paper"
                  return result
            elsif player2 == "scissors"
                # return "Wins"
                result[:display]= "Wins"
                result[:boolean]= true
                result[:player2]= "scissors"
                  return result
            end
        elsif player1 == "paper"
            if player2 == "rock"
                # return "Wins"
                result[:display]= "Wins"
                result[:boolean]= true
                result[:player2]= "rock"
                  return result
            elsif player2 == "paper"
                # return "Ties with"
                result[:display]= "Ties with"
                result[:boolean]= false
                result[:player2]= "paper"
                  return result
            elsif player2 == "scissors"
                # return "Loses to"
                result[:display]= "Loses to"
                result[:boolean]= false
                result[:player2]= "scissors"
                  return result
            end
        elsif player1 == "scissors"
            if player2 == "rock"
                # return "Loses to"
                result[:display]= "Loses to"
                result[:boolean]= false
                result[:player2]= "rock"
                  return result
            elsif player2 == "paper"
                # return "Wins"
                result[:display]= "Wins"
                result[:boolean]= true
                result[:player2]= "paper"
                  return result
            elsif player2 == "scissors"
                # return "Ties with"
                result[:display]= "Ties with"
                result[:boolean]= false
                result[:player2]= "scissors"
                  return result
            end
        end
    end
end
