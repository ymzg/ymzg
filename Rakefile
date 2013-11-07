#!/usr/bin/env rake
#encoding: utf-8 
# Add your own tasks in files placed in api/tasks ending in .rake,
# for example api/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

task :ci => %w(db:migrate db:test:prepare spec)

Ymzg::Application.load_tasks
