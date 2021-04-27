require 'rails_helper'

describe 'User wants to generates password' do
  before do
    visit root_path
  end

  it 'and put your word successfully' do
    fill_in 'word', with: 'batatinha'
    click_on 'Gerar minha senha'

    expect(page).not_to have_content('Preciso de uma palavra para poder gerar sua senha :(')
  end

  it 'but doesnt put your word' do
    fill_in 'word', with: ''
    click_on 'Gerar minha senha'

    expect(page).to have_content('Preciso de uma palavra para poder gerar sua senha :(')
  end

  it 'and the word is too short' do
    fill_in 'word', with: 'oi'
    click_on 'Gerar minha senha'

    expect(page).to have_content('Opa! essa palavra é muito pequena, tente uma maior ;)')
  end
end
