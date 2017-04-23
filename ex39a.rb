states = {
  'Johor' => 'JH',
  'Kedah' => 'KD',
  'Kuala Lumper' => 'KL',
  'Malacca' => 'MLK',
  'Penang' => 'PN',
  'Perak' => 'PK',
  'Sabah' => 'SB',
  'Sarawak' => 'SRW',
  'Selangor' => 'SLG',
  'Terengganu' => 'TRGN'
}

cities = {
  'JH' => 'Johor Bahru',
  'KD' => 'Alor Setar',
  'KL' => 'Kuala Lumpur',
  'MLK' => 'Malacca City',
  'PN' => 'George Town',
  'PK' => 'Ipoh',
  'SB' => 'Kota Kinabalu',
  'SRW' => 'Kuching'
}

cities['SLG'] = 'Petaling Jaya'
cities['TRGN'] = 'Kuala Terengganu'

puts '-' * 15
puts "Johor's abbreviation is #{states['Johor']} and has the city #{cities['JH']}."
puts "Kedah's abbreviation is #{states['Kedah']} and has the city #{cities['KD']}."
puts '-' * 15

states.each do |state, abbrev|
  puts "#{state} is abbrev to #{abbrev}."
end

puts '-' * 15
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}."
end
puts '-' * 15

states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbrev to #{abbrev} and has city #{city}."
end

state = states['Singapore']

if !state
  puts "Sorry, Singapore isn't part of Malaysia."
end

city = cities['SG']
city ||= 'Does not exist'
puts "The city for Singapore is #{city}."
