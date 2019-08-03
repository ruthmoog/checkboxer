# frozen_string_literal: true

require 'csv'

# Creates a checklist as an array
class Checklist
  def self.generate
    data_file = 'default_data.csv'
    list = []
    CSV.foreach(data_file) do |row|
      list << Check.new(row[0], row[1])
    end
    list
  end
end
