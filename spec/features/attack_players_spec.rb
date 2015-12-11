
feature 'Enter names' do

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario 'confirm player 2 has been attacked' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content 'Timmy Jones HP: 50'
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'confirm player 1 has been attacked' do
    sign_in_and_play
    click_button('Attack!')
    click_link('OK')
    click_button('Attack!')
    expect(page).to have_content 'Johnny Cash HP: 50'
  end

end
