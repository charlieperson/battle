feature "switch turns" do

# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
  scenario "at the start of the game default to player 1's turn" do
    sign_in_and_play
    expect(page).to have_content "It's Johnny Cash's turn"
  end

  scenario "once player 1 has had their turn, switch turns" do
    sign_in_and_play
    click_link('Attack!')
    click_link('OK')
    expect(page).to have_content"It's Timmy Jones's turn"
  end

end
