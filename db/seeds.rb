Role.destroy_all
Audition.destroy_all

puts "Creating roles..."
role1 = Role.create(character_name: "Tyrion Lannister")
role2 = Role.create(character_name: "Peter Parker / Spiderman")
role3 = Role.create(character_name: "Obi-Won Kenobi")
role4 = Role.create(character_name: "Loki")

puts "Creating auditions..."
Audition.create(actor: "Peter Dinklage", location: "Hollywood Blvd.", phone: 2234456677, hired: true, role: role1)
Audition.create(actor: "Rick Sanchez", location: "Hollywood Blvd.", phone: 9987765543, hired: true, role: role1)
Audition.create(actor: "Tom Holland", location: "Marvel Studios", phone: 1234567890, hired: true, role: role2)
Audition.create(actor: "Tobey Mcguire", location: "Marvel Studios", phone: 9087654321, hired: false, role: role2)
Audition.create(actor: "Ewan Mcgregor", location: "Lucas Films", phone: 1357986421, hired: true, role: role3)
Audition.create(actor: "Morty Smith", location: "Lucas Films", phone: 1239874560, hired: false, role: role3)
Audition.create(actor: "Tim Hiddleston", location: "Marvel Studios", phone: 3215467890, hired: false, role: role4)
Audition.create(actor: "Jerry Smith", location: "Marvel Studios", phone: 3245678209, hired: false, role: role4)

puts "Seeding done!"
