feature 'Enter names' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario 'allows players to see eachothers hit points' do
    sign_in_and_play
    expect(page).to have_content 'Johnny Cash: 60HP'
  end

end
