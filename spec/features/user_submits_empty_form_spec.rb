# frozen_string_literal: true

require 'go_to_form_helper'

feature 'user submits empty template request' do
  scenario 'user clicks submit' do
    # visit('/')
    # click_link('Checklist')
    go_to_form
    expect(page).to have_button('Submit')
    click_button('Submit')
    expect(page).to have_content('There are no corrections.')
    expect(page).not_to have_content('Please complete "request a change".')
  end
end

feature 'user selects from a checklist' do
  scenario 'user selects one option' do
    # visit('/')
    # click_link('Checklist')
    go_to_form
    check('request a change')
    click_button('Submit')
    expect(page).to have_content('Please complete "request a change".')
  end
end
