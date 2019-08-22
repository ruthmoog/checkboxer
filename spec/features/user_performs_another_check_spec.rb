# frozen_string_literal: true

feature 'user performs another check' do
  scenario 'can navigate to blank form' do
    go_to_form
    click_button('Submit')
    click_link('Perform Another Check')
    expect(page).to have_unchecked_field('checklist_item[]')
  end
end
