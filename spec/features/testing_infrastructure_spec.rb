describe 'Battle', :type => :feature do
  it 'shows infrastructure is working' do
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end
end