namespace :invoke do

  # Defalut to :app roles
  rake_roles = fetch(:rake_roles, :app)

  desc "Execute a rake task on a remote server (cap invoke:rake TASK=db:migrate)"
  task :rake do
    if ENV['TASK']
      on roles(rake_roles) do
        within current_path do
          with rails_env: fetch(:rails_env) do
            execute :rake, ENV['TASK']
          end
        end
      end

    else
      puts "\n\nFailed! You need to specify the 'TASK' parameter!",
           "Usage: cap <stage> invoke:rake TASK=your:task"
    end
  end

end
