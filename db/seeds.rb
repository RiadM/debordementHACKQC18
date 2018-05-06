# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')

num_ai = 1

csv.each do |row|
  t = Surverse.new
  t.num = num_ai
  t.siteNo = row['siteNo']
  t.nom = row['nom']
  t.secteur = row['secteur']
  t.region = row['region']
  t.lon = row['lon']
  t.lat = row['lat']
  
  t.save

  num_ai += 1
  puts "#{t.lon}, #{t.lat} saved"
end

puts "There are now #{Surverse.count} rows in the transactions table"