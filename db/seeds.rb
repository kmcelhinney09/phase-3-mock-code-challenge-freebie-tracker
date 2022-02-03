puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name:"squishy",value:10, company_id:Company.first.id,dev_id:Dev.first.id)
Freebie.create(item_name:"squishier",value:15, company_id:Company.second.id,dev_id:Dev.first.id)
Freebie.create(item_name:"rad button",value:1, company_id:Company.third.id,dev_id:Dev.second.id)
Freebie.create(item_name:"cool magnet",value:5, company_id:Company.fourth.id,dev_id:Dev.second.id)
Freebie.create(item_name:"telescope",value:20, company_id:Company.first.id,dev_id:Dev.third.id)
Freebie.create(item_name:"pocket-protector",value:200, company_id:Company.second.id,dev_id:Dev.third.id)
Freebie.create(item_name:"silent keyboard",value:2, company_id:Company.third.id,dev_id:Dev.fourth.id)
Freebie.create(item_name:"clickie keyboard",value:100, company_id:Company.first.id,dev_id:Dev.fourth.id)
Freebie.create(item_name:"sparker",value:32, company_id:Company.second.id,dev_id:Dev.first.id)
Freebie.create(item_name:"splat",value:10, company_id:Company.third.id,dev_id:Dev.second.id)
Freebie.create(item_name:"nom-nom-nom",value:57, company_id:Company.first.id,dev_id:Dev.third.id)

puts "Seeding done!"
