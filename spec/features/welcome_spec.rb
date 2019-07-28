# frozen_string_literal: true

feature 'Visit home page' do
  scenario 'index displays welcome' do
    visit '/'
    expect(page).to have_content('Welcome to Checkboxer')
    expect(page).to have_link('Checklist')
  end
end
