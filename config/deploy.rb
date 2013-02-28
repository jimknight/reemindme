require "bundler/capistrano"
# set :whenever_command, "bundle exec whenever"
# require "whenever/capistrano"

load "config/recipes/base"
load "config/recipes/nginx"
load "config/recipes/unicorn"
load "config/recipes/postgresql"
load "config/recipes/nodejs"
load "config/recipes/rbenv"
load "config/recipes/check"

server "198.211.96.39", :web, :app, :db, primary: true

set :user, "deployer"
set :application, "reemindme"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false
set :host_name, "reemindme.com"

set :scm, "git"
set :repository, "git@github.com:jimknight/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases

namespace :deploy do
  task :upload_settings, :roles => :app do
    top.upload("config/twilio.yml", "#{release_path}/config/twilio.yml", :via => :scp)
  end
end

after 'deploy:update_code', 'deploy:upload_settings'