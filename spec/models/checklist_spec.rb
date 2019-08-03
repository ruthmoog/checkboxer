# frozen_string_literal: true

require 'checklist'
require 'check'

RSpec.describe 'checklist' do
  it 'returns a collection of checks' do
    checklist = Checklist.new
    check = Check.new('request a change', 'Please complete request a change.')
    expect(checklist.generate_checklist).to be_an(Array)
    expect(checklist.generate_checklist[0].requirement).to eq(check.requirement)
    expect(checklist.generate_checklist[0].request).to eq(check.request)
  end
end
