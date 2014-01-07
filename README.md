## YMZG [![Build Status](https://snap-ci.com/b7yqO4aw-tps_UIJqtfjuXNF4RDYu4W9W4lJGzMnboc/build_image)](https://snap-ci.com/projects/ymzg/ymzg/build_history)


###本地安装运行指南###

####环境准备####
+ Linux系统 (如Ubuntu 12.04)
+ RVM
+ Ruby 2.0.0
+ RubyGem
+ Rails 4.0.1 (Latest version)
+ Postgresql 9.1
+ Git


####安装RVM####

#####1. RVM 官方提供的安装方法需要用到curl#####

打开一个终端，执行

> `$curl`

如果提示

> `curl: try 'curl --help' or 'curl --manual' for more information`  

说明已经装好curl, 请跳至下一步骤, 否则, 如果提示

> `curl: command not found`

 请执行下面步骤安装。我们将会用curl来安装RVM

> `$sudo apt-get install curl`

再次执行

> `$curl`

如果提示

> `curl: try 'curl --help' or 'curl --manual' for more information`  

则说明安装curl成功


#####2. (可选)清除所有旧的RVM配置。######

因为有些同学可能自己对RVM进行过一些配置，为了确保安装过程不被之前的配置干扰，我们需要将其清除。如果没有安装或配置过rvm，跳过此步骤。

> `$sudo apt-get --purge remove ruby-rvm`

> `$sudo rm -rf /usr/share/ruby-rvm /etc/rvmrc /etc/profile.d/rvm.sh`

 新开一个终端, 执行

> `$env | grep rvm`

 看不到任何东西才对


#####3. 安装RVM#####

执行

> `$curl -sSL https://get.rvm.io | bash -s stable`

中途会提示几次输入密码，这时候输入密码然后敲回车便是。全程需要几分钟到半小时不等，请给点耐心等待。

这个过程停下来了过后，屏幕上会提示你在使用rvm前需要做的事情。就是执行

> `$source /home/你的用户名/.rvm/scripts/rvm` 

如我的 `$source /home/qsyou/.rvm/scripts/rvm`

执行到此, RVM就算安装完成。

> 通过`$rvm -v` 查看rvm版本


####安装ruby 2.0.0 ####

> `$rvm install 2.0.0`

> `$rvm use 2.0.0 --default` 

如果提示说需要你更改终端的配置 请参考https://rvm.io/integration/gnome-termimal

> `$ruby -v` 查看版本,就是刚才装的2.0.0了


####安装Rails 4####

#####1. 安装rubygem#####

> `$sudo apt-get install rubygems`

查看gem版本

> `$gem -v` 我的是2.2.0


#####2. 安装rails#####

具备翻墙技能的童靴请跳过*开头的部分

> *`$gem sources --remove https://rubygems.org/`

> *`$gem sources -a http://ruby.taobao.org/`

执行

> `$gem install rails` 全程需要几分钟到半小时不等

查看版本

> `rails -v` 

我的是Rails 4.0.2


####安装及配置数据库####

#####1. For Linux (Ubuntu)#####

赵俊伟同学有一篇博客在此，请参阅
> [Linux 安装配置postgresql](http://toozhao.com/2012/11/09/201211install-postgresql-with-linux/)


#####2. For Mac OS#####

Check your version of postgresql
> `$psql --version`

Check to be sure your pgsql route is correct
> `$which psql`

Update to postgresql lastest with homebrew.
> `$brew install postgresql`

Initialize postgres
> `$ initdb /usr/local/var/postgres`

Start your postgres server
> `$pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start`

To stop your postgres server
> `$pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop`



####下载代码####
#####1. 安装git#####

> `$sudo apt-get install git`


#####2. 克隆代码#####

> `$mkdir workspace`

> `$cd workspace`

> `$git clone https://github.com/ymzg/ymzg.git`

 执行`$ls`会发现有一个文件夹叫做ymzg

> `$cd ymzg`


#####3. 运行代码#####

> `$bundle install·`

> `$rake db:create`

> `$rake ci`

> `$rails server`

> 如果没有报错的话， 就打开一个浏览器 访问 http://localhost:3000 看到主页，安装就算完成了。


###持续集成###

我们用snap-ci作为持续集成的工具
构建历史请访问: https://snap-ci.com/projects/ymzg/ymzg/build_history
每次提交都会自动部署到Dev环境上。 Sys和Prod环境需要手动部署。

+ Dev 部署地址: http://ymzg-dev.herokuapp.com
+ Sys 部署地址: http://ymzg-sys.herokuapp.com
+ Prod 部署地址: http://ymzg-prod.herokuapp.com
