class Schedule < ApplicationRecord
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |schedule|
        csv << schedule.attributes.value_at(*column_names)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Schedule.create! row.to_hash
    end
  end
end