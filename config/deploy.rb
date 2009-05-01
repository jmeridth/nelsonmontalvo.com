set :user, "jmeridth"
set :domain, "nelsonmontalvo.com"
set :application, "nelson"

default_run_options[:pty] = true
set :repository,  "git@git.armmer.com:nelson.git"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/home/jmeridth/public_html/nelson/"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, "git"
set :deploy_via, :remote_cache
set :branch, 'master'
set :scm_verbose, true
set :use_sudo, false
#set :git_enable_submodules, 1 # if you have vendored rails
#set :git_shallow_clone, 1

role :app, domain
role :web, domain
role :db,  domain, :primary => true

# task which causes Passenger to initiate a restart
namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

# task to reconfigure databases
after "deploy:update_code", :configure_database
desc "copy database.yml into the current release path"
task :configure_database, :roles => :app do
  shared_db_config = "#{deploy_to}/shared/config/database.yml"
  run "cp #{shared_db_config} #{release_path}/config/database.yml"
end