class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        dev.freebies << Freebie.create(item_name:item_name, value:value, company_id: self.id)
    end

    def self.oldest_company
        self.order(:founding_year)[0]
    end
end
