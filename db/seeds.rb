puts "Creating Roles..."
r1 = Role.create(character_name: "Willy Wonka")
r2 = Role.create(character_name: "Mickey Mouse")
r3 = Role.create(character_name: "Elmo")

puts "Creating Auditions..."
Audition.create(actor: "Terrence", location: "Los Angeles", phone: 9499396188, hired: true, role_id: r1.id)
Audition.create(actor: "Justin", location: "New York", phone: 9491231234, hired: false, role_id: r2.id)
Audition.create(actor: "William", location: "San Diego", phone: 9492342345, hired: true, role_id: r3.id)
Audition.create(actor: "Grace", location: "Orlando", phone: 9493453456, hired: true, role_id: r3.id)
Audition.create(actor: "Leo", location: "Durham", phone: 9494564567, hired: true, role_id: r2.id)
Audition.create(actor: "John", location: "Fairfax", phone: 9497897890, hired: false, role_id: r3.id)


puts "Seeding Complete!!!"