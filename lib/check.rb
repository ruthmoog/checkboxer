# frozen_string_literal: true

# represents each line in the CSV
class Check
  attr_reader :requirement, :request

  def initialize(requirement, request)
    @requirement = requirement
    @request = request
  end
end
