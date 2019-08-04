# frozen_string_literal: true

require 'check'

RSpec.describe 'Check' do
  it 'returns a collection of checks' do
    expected_check = Check.new(
      'Example 1',
      'Example paragraph 1'
    )
    checklist = Check.generate('test.csv')
    expect(checklist).to be_an(Array)
    expect(checklist[0].requirement).to eq(expected_check.requirement)
    expect(checklist[0].request).to eq(expected_check.request)
  end
end
