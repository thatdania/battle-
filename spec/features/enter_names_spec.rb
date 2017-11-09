describe 'Battle', :type => :feature do

  it 'takes names and shows them on screen' do
    sign_in_and_play
    expect(page).to have_content "Allan vs Dania"
  end

  it 'shows starting HitPoints numbers on screen' do
    sign_in_and_play
    expect(page).to have_content "100HP ____ 100HP"
  end
end
