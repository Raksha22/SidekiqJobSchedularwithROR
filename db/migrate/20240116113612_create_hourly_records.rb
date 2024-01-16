class CreateHourlyRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :hourly_records do |t|
      t.integer :male_count
      t.integer :female_count

      t.timestamps
    end
  end
end
