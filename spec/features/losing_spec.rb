# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'Losing' do
  scenario 'force a player to lose' do
    sign_in_and_play
    10.times do
      click_button('Attack!')
      click_link('OK')
    end
      click_button('Attack!')
      expect(page).to have_content 'Timmy Jones lost!'
  end
end
