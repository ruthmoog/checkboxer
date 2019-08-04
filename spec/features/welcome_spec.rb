# frozen_string_literal: true

feature 'user visits home page' do
  scenario 'displays a welcome message' do
    visit '/'
    expect(page).to have_content('Welcome to Checkboxer')
    expect(page).to have_link('Checklist')
  end
end
