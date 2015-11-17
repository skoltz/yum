# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Picture.delete_all
File.open("#{Rails.root}/public/seed_data/yum_seed_semi.csv") do |row|
	row.read.each_line do |line|
		image, type, restaurant_name, address = line.chomp.split(";")
		image = image.gsub("/assets/","")
		Picture.create!(:image => File.new("#{Rails.root}/app/assets/images/#{image}"), :name => type, :restaurant => restaurant_name, :address => address)
	end
end