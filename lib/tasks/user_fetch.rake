namespace :custom_tasks do
  desc 'Fetch user data'
  task :user_fetch_job  => :environment do
    puts 'Running User Fetch Job...'
    
    UserFetchJob.perform_async
  end
end
