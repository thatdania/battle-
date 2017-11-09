describe 'Battle', :type => :feature do

  it 'takes names and shows them on screen' do
    sign_in_and_play
    expect(page).to have_content "Allan vs Dania"
  end

  it 'Player 1 gets confirmation of attacking Player 2' do
    sign_in_and_play
    click_button('AttackP2')
    expect(page).to have_content "Allan! You have attacked Dania!"
  end
end
