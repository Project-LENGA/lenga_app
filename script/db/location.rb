require 'csv'

# clean up the table
Location.delete_all

location_data = CSV.read('./script/db/LENGA_US College List_v.0.3_import_20180811.csv')

success = 0
failed = 0

location_data.each do |data|
  location = Location.new(city: data[1], state: data[2], country: data[3])
  if location.save
    success += 1
  else
    failed += 1
  end
end

puts "s: #{success}, f: #{failed}"
