## YMZG ##

###本地安装运行指南###

+ clone the code base
+ 执行 bundle install
+ 下载、安装、配置 Postgresql 数据库
+ 第一次时请运行 rake db:create和 rake db:migrate 命令
+ 运行 rails server

###持续集成###
我们的用snap-ci作为持续集成的工具
构建历史请访问: https://snap-ci.com/projects/ymzg/ymzg/build_history
每次提交都会自动部署到Dev环境上

+ Dev 部署地址: http://ymzg-dev.herokuapp.com
+ Sys 部署地址: http://ymzg-sys.herokuapp.com
+ Prod 部署地址: http://ymzg-prod.herokuapp.com



