def sign_in_and_play
  visit '/'
  fill_in(:player_1_name, with: 'Johnny Cash')
  fill_in(:player_2_name, with: 'Timmy Jones')
  click_button('Submit')
  allow(Kernel).to receive(:rand).and_return(10)
end
