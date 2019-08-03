# frozen_string_literal: true

require 'check'

RSpec.describe 'check' do
  it 'returns a collection of checks' do
    expected_check = Check.new('request a change', 'Please complete request a change.')
    expect(Check.generate).to be_an(Array)
    expect(Check.generate[0].requirement).to eq(expected_check.requirement)
    expect(Check.generate[0].request).to eq(expected_check.request)
  end
end
