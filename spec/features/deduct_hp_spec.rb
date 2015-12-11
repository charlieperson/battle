feature "duduct points" do

  # As Player 1,
  # So I can start to win a game of battle,
  # I want my attack to reduce Player 2's hp
  scenario "reduce player's hp by a random number between 1-30 when attacked" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(20)
    click_button('Attack!')
    expect(page).to have_content"Timmy Jones HP: 40"
  end
end
