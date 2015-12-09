feature 'Enter names' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario 'allows players to see eachothers hit points' do
    visit '/'
    fill_in(:player_1_name, with: 'Johnny Cash')
    fill_in(:player_2_name, with: 'Timmy Jones')
    click_button('Submit')
    expect(page).to have_content 'Johnny Cash: 60HP'
  end

end
