# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create(:title => "情系汶川", :description => "去汶川地区义教", :event_date => Time.now)
Event.create(:title => "情系山区", :description => "去雅安山区义教", :event_date => Time.now)