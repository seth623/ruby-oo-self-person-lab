class Person

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end 
    attr_reader :name, :happiness, :hygiene  
    attr_accessor :bank_account 

    def happiness=(happiness)
        @happiness = happiness.clamp(0, 10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0, 10)    
    end 

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end 
    end
    
    def happy?
        if @happiness > 7
            return true
        else
            return false 
        end
    end 

    def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
    end 
    
    def take_bath
        self.hygiene += 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end 

    def start_conversation(person, topic)

        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end 

end
