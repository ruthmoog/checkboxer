# frozen_string_literal: true

feature 'user submits empty template request' do
  scenario 'user clicks submit' do
    visit '/'
    click_link 'Checklist'
    expect(page).to have_button('Submit')
    click_button 'Submit'
    expect(page).to have_content('Dear author,')
  end
end
