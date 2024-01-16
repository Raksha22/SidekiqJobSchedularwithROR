class DailyRecordTabulationJob < BaseJob
  def perform
    male_count = HourlyRecord.sum(:male_count)
    female_count = HourlyRecord.sum(:female_count)

    DailyRecord.create(
      date: Date.today,
      male_count: male_count,
      female_count: female_count,
      male_avg_age: calculate_avg_age('male'),
      female_avg_age: calculate_avg_age('female')
    )
  end

  private

  def calculate_avg_age(gender)
    users = User.where(gender: gender)
    return 0 if users.empty?
  
    total_age = users.sum(:age)
    total_users = users.count
  
    return 0 if total_users.zero?
  
    total_age.to_f / total_users
  end
end
