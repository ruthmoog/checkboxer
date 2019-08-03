# frozen_string_literal: true

require 'check'

RSpec.describe 'check' do
  it 'returns a collection of checks' do
    expected_check = Check.new(
      'request a change',
      'Please complete request a change.'
    )
    checklist = Check.generate
    expect(checklist).to be_an(Array)
    expect(checklist[0].requirement).to eq(expected_check.requirement)
    expect(checklist[0].request).to eq(expected_check.request)
  end
end
