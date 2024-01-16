class UserFetchJob < BaseJob
  def perform
    response = RestClient.get 'https://randomuser.me/api/?results=20'
    users_data = JSON.parse(response.body)['results']

    users_data.each do |user_data|
      user = User.find_or_initialize_by(uuid: user_data['login']['uuid'])
      user.update(
        name: user_data['name'],
        location: user_data['location'],
        age: user_data['dob']['age'],
        gender: user_data['gender']
      )
    end

    update_gender_counts
  end

  private

  def update_gender_counts
    male_count = User.where(gender: 'male').count
    female_count = User.where(gender: 'female').count

    HourlyRecord.create(male_count: male_count, female_count: female_count)
  end
end
