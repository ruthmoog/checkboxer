# frozen_string_literal: true

feature 'user performs another check' do
  scenario 'can navigate to blank form' do
    go_to_form
    click_button('Submit')
    click_link('Perform Another Check')
    expect(page).to have_unchecked_field('checklist_item[]')
  end

  scenario 'cannot see previous template' do
    go_to_form
    check('Needs title page')
    click_button('Submit')
    click_link('Perform Another Check')
    click_button('Submit')
    expect(page).not_to have_content('Please provide a title page')
  end
end
