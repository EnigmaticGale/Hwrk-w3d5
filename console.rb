require_relative( 'models/customer.rb' )
require_relative( 'models/film.rb' )
require_relative( 'models/ticket.rb' )

require( 'pry-byebug' )

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new({
  'name' => 'Bob',
  'funds' => 100
})
customer1.save()

customer2 = Customer.new({
  'name' => 'Tim',
  'funds' => 150
})
customer2.save()

film1 = Film.new({
  'title' => 'Star Wars V',
  'price' => 10
})
film1.save()

film2 = Film.new({
  'title' => 'Star Wars VI',
  'price' => 20
})
film2.save()

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })
ticket1.save

ticket2 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film1.id
  })
ticket2.save

ticket3 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film2.id
  })
ticket3.save

customer1.funds = 120
customer1.update()

Customer.read_all
Film.read_all
Ticket.read_all

customer1.films

binding.pry
nil
