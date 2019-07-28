# frozen_string_literal: true

feature 'user submits empty form' do
  scenario 'user clicks submit' do
    visit '/'
    click_button 'Submit'
    expect(page).to have_content('Dear author,')
  end
end
