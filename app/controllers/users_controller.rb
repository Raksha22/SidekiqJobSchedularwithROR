class UsersController < ApplicationController
  def index
    @users = User.all
    @daily_records = DailyRecord.all
  end
end
