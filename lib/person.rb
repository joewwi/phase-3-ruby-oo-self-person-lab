# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_writer
    attr_accessor :bank_account


    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8                          
        @hygiene = 8
    end

    def limit value
        if value > 10
            10
        elsif value < 0
            0
        else
            value
        end 
    end

    def happiness=(happiness)
        @happiness = limit(happiness)
    end

    def hygiene=(hygiene)
        @hygiene = limit(hygiene)
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid amount
        self.bank_account = bank_account + amount
        "all about the benjamins"
    end

    def take_bath 
        limit self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        limit self.happiness += 2
        limit self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        limit self.happiness += 3
        limit friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        case topic  
        when "politics"
            limit self.happiness -= 2
            limit friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            limit self.happiness += 1
            limit friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end
end