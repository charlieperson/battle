feature "duduct points" do

  # As Player 1,
  # So I can start to win a game of battle,
  # I want my attack to reduce Player 2's hp
  scenario "reduce player's hp when attacked" do
    sign_in_and_play
    expect(page).to have_content"Timmy Jones' hp has been reduced by 10"
  end

end
