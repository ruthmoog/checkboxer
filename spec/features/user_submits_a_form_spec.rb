# frozen_string_literal: true

require 'go_to_form_helper'

feature 'user submits empty checklist' do
  scenario 'user clicks submit with no corrections' do
    go_to_form
    click_button('Submit')
    expect(page).to have_content('There are no corrections.')
    expect(page).not_to have_content('Please provide a title page')
  end
end

feature 'user selects from a checklist' do
  scenario 'user submits one correction' do
    go_to_form
    check('Needs title page')
    click_button('Submit')
    expect(page).to have_content('Please provide a title page')
  end

  scenario 'user submits multiple corrections' do
    go_to_form
    check('Needs title page')
    check('Needs acknowledgements')
    click_button('Submit')
    expect(page).to have_content('Please provide a title page')
    expect(page).to have_content('Please include an Acknowledgements section')
  end
end
