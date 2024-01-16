every '0 * * * *' do
  rake "user_fetch_job"
end

every '59 23 * * *' do
  rake "daily_record_job"
end
