# encoding : utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
events = Event.create([{name: "情系汶川情系山区",
               describe: "我国西部山区有很多孩子仍然在贫困和闭塞的环境中挣扎成长，他们渴望能得到志愿者给他们持续的爱与支持，团队为有志于参加山区义教的同学提供组织和培训服务，组建团队亲临贫困山区，为当地孩子送去知识与温暖。",
                        data: Time.new().end_of_month,
                        location: "雅安|凉山|映秀"
                       }])