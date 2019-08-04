# frozen_string_literal: true

require 'go_to_form_helper'

feature 'user submits empty checklist' do
  scenario 'user clicks submit with no corrections' do
    go_to_form
    click_button('Submit')
    expect(page).to have_content('There are no corrections.')
    expect(page).not_to have_content('Lorem ipsum dolor sit amet, consectetur')
  end
end

feature 'user selects from a checklist' do
  scenario 'user submits one correction' do
    go_to_form
    check('Lorem ipsum')
    click_button('Submit')
    expect(page).to have_content('Lorem ipsum dolor sit amet, consectetur')
  end

  scenario 'user submits multiple corrections' do
    go_to_form
    check('Lorem ipsum')
    check('In vitae')
    click_button('Submit')
    expect(page).to have_content('Lorem ipsum dolor sit amet, consectetur')
    expect(page).to have_content('In vitae turpis massa sed.')
  end
end
