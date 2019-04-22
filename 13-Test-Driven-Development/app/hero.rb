class Hero

    attr_accessor :abilities

    # Accepts an array of abilities
    # Each ability will be represented by a hash with a name and "coolness" rating
    def initialize(abilities)
        self.abilities = abilities
    end

    # Returns the heros coolest ability
    def coolest_ability
        coolest_ability = nil
        abilities.each do | current_ability |  
            if coolest_ability == nil || current_ability[:coolness] > coolest_ability[:coolness]
                coolest_ability = current_ability
            end
        end
        coolest_ability
    end

    def abilities_name
       abilities.map do |ability|
            ability[:name]
        end

    end

    # Returns abilities Ordered Alphabetically 
    def ordered_abilities
       
        abilities_name.sort
       
    end

    def add_ability(hash)
        if(hash.class == Hash)
            self.abilities << hash
        end
        self.abilities
    end

end



