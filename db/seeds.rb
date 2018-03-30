require 'date'

20.times do |i|
	first_name = FactoryHelper::Name.first_name
	last_name = FactoryHelper::Name.last_name
	address = FactoryHelper::Address.street_address

	random_year =  Random.new.rand(1970..2017)
	random_month = Random.new.rand(1..12)
	random_day  =  Random.new.rand(1..30)

	time = Date.new(random_year,random_month,random_day)
	
	s = User.create( first_name: first_name, last_name: last_name, birthday: time.to_s, address: address  )
end
