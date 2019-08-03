# frozen_string_literal: true

require 'checklist'
require 'check'

RSpec.describe 'checklist' do
  it 'returns a collection of checks' do
    check = Check.new('request a change', 'Please complete request a change.')
    expect(Checklist.generate).to be_an(Array)
    expect(Checklist.generate[0].requirement).to eq(check.requirement)
    expect(Checklist.generate[0].request).to eq(check.request)
  end
end
