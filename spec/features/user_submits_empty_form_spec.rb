# frozen_string_literal: true

feature 'user submits empty template request' do
  scenario 'user clicks submit' do
    visit('/')
    click_link('Checklist')
    expect(page).to have_button('Submit')
    click_button('Submit')
    expect(page).to have_content('Dear author,')
    expect(page).not_to have_content('Please complete "request a change".')
  end
end

feature 'user selects from a checklist' do
  scenario 'user selects one option' do
    visit('/')
    click_link('Checklist')
    check('request a change')
    click_button('Submit')
    expect(page).to have_content('Please complete "request a change".')
  end
end
