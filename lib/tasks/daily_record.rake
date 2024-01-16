namespace :custom_tasks do
  desc 'Update Daily Record'
  task :daily_record_job  => :environment do
    puts 'Running Daily record Job...'
    
    DailyRecordTabulationJob.perform_async
  end
end