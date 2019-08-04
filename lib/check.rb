# frozen_string_literal: true

require 'csv'

# represents each line in the CSV
class Check
  attr_reader :requirement, :request

  def initialize(requirement, request)
    @requirement = requirement
    @request = request
  end

  def self.generate(data_file = 'default_data.csv')
    list = []
    CSV.foreach(data_file) do |row|
      list << Check.new(row[0], row[1])
    end
    list
  end
end
