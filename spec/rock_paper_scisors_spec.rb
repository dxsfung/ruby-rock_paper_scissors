require('rspec')
  require('rock_paper_scissors')

  describe("String#beats")do
    it("returns result Player 1 in object and Player 2 in argument")do
      expect("rock".beats("scissors")).to(eq("Wins"))
    end
    it("returns result Player 1 in object and Player 2 in argument")do
      expect("rock".beats("rock")).to(eq("Ties with"))
    end
    it("returns result Player 1 in object and Player 2 in argument")do
      expect("rock".beats("paper")).to(eq("Loses to"))
    end
    it("returns result Player 1 in object and Player 2 in argument")do
      expect("paper".beats("scissors")).to(eq("Loses to"))
    end
    it("returns result Player 1 in object and Player 2 in argument")do
      expect("paper".beats("rock")).to(eq("Wins"))
    end
    it("returns result Player 1 in object and Player 2 in argument")do
      expect("paper".beats("paper")).to(eq("Ties with"))
    end

    it("returns result Player 1 in object and Player 2 in argument")do
      expect("scissors".beats("scissors")).to(eq("Ties with"))
    end
    it("returns result Player 1 in object and Player 2 in argument")do
      expect("scissors".beats("rock")).to(eq("Loses to"))
    end
    it("returns result Player 1 in object and Player 2 in argument")do
      expect("scissors".beats("paper")).to(eq("Wins"))
    end


  end
