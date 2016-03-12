# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

module TempFixForRakeLastComment
  def last_comment
    last_description
  end
end
Rake::Application.send :include, TempFixForRakeLastComment

desc 'Raise an error unless development environment'
task :safety_check do
  raise "You can only use this in dev!" unless Rails.env.development?
end

namespace :db do
  desc 'Drop, create, migrate then seed the development database'
  task yolo: [
    'environment',
    'safety_check',
    'db:reset',
    'db:seed'
  ]
end

Rails.application.load_tasks
