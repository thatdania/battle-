describe 'Battle', :type => :feature do

  it 'takes names and shows them on screen' do
    visit '/'
    fill_in('player1', with: 'Allan')
    fill_in('player2', with: 'Dania')
    click_on('Fight')
    expect(page).to have_content "Allan vs Dania"
  end
  
end
