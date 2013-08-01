#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create username: 'root', password: 'root', is_admin: true
Event.create(:title => "情系汶川", :location => "西安", :description => "去汶川地区义教", :event_date => Time.gm(2013,7,10,22,5,0))
Event.create(:title => "情系山区", :location => "成都", :description => "去雅安山区义教", :event_date => Time.now)
