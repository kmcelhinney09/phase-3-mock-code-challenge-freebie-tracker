class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name_looking_for)
        self.freebies.map{|freebie| freebie.item_name}.include?(item_name_looking_for)
    end

    def give_away(dev,freebie)
        dev.freebies << freebie
    end
end
