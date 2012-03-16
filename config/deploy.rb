require "bundler/capistrano"
# load 'deploy/assets'

set   :domain,        "69.172.229.224"
role  :web,           domain
role  :app,           domain
role  :db,            domain, :primary => true

# Fill user in - if remote user is different to your local user
set :user, "rails"

default_run_options[:pty] = true

set :application, "reemindme"
set :scm, :git
#set :repository,  "git://github.com/jimknight/Discovery.git"
set :repository,  "."
set :deploy_via, :copy
set :deploy_to, "/home/#{user}/#{application}"

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end