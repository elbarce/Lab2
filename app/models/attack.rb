class Attack < ApplicationRecord
    belongs_to :monster
    belongs_to :victim

    validate :nivel_victima

    def nivel_victima
        if ((monster.scare_level > 5) && (Date.today.year - victim.birthdate.year <18))
            errors.add(:birthdate, "la victima no esta en edad de ser asustada")  
        end
    end
end
