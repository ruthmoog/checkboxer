# frozen_string_literal: true

require 'go_to_form_helper'

feature 'user submits empty checklist' do
  scenario 'user clicks submit with no corrections' do
    go_to_form
    click_button('Submit')
    expect(page).to have_content('There are no corrections.')
    expect(page).not_to have_content('Please complete request a change.')
  end
end

feature 'user selects from a checklist' do
  scenario 'user submits one correction' do
    go_to_form
    check('request a change')
    click_button('Submit')
    expect(page).to have_content('Please complete request a change.')
  end

  scenario 'user submits multiple corrections' do
    go_to_form
    check('request a change')
    check('request another change')
    click_button('Submit')
    expect(page).to have_content('Please complete request a change.')
  end
end
