class DailyRecord < ApplicationRecord
  before_save :calculate_avg_ages

  private

  def calculate_avg_ages
    users = User.where(gender: 'male')
    male_avg_age = calculate_average_age(users)

    users = User.where(gender: 'female')
    female_avg_age = calculate_average_age(users)

    self.male_avg_age = male_avg_age
    self.female_avg_age = female_avg_age
  end

  def calculate_average_age(users)
    return 0 if users.empty?

    total_age = users.sum(&:age)
    total_age.to_f / users.count
  end
end
