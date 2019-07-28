feature "Hello, world!" do
  scenario "index displays hello world" do
    visit '/'
    expect(page).to have_content('Hello, world!')
  end
end
