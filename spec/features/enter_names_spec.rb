describe 'Battle', :type => :feature do

  it 'takes names and shows them on screen' do
    sign_in_and_play
    expect(page).to have_content "Allan vs Dania"
  end

  it 'shows starting HitPoints numbers on screen' do
    sign_in_and_play
    expect(page).to have_content "100HP ____ 100HP"
  end

  it 'Player 1 gets confirmation of attacking Player 2' do
    sign_in_and_play
    click_on('AttackP2')
    expect(page).to have_content "Allan! You have attacked Dania!"
  end
end
