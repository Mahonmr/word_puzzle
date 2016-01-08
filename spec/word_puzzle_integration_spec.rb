require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Flow of word puzzle game', {:type => :feature}) do
  it('takes you to the root path') do
    visit('/')
    expect(page).to have_content("Welcome To Word Puzzle")
  end

  it('fills in phase and shows you result') do
    visit('/')
    fill_in('phrase_to_puzzle', :with => 'Believe you can and you\'re halfway there. Theodore Roosevelt')
    click_button('Lets Play')
    expect(page).to have_content('"B-l--v- y-- c-n -nd y--\'r- h-lfw-y th-r-. Th--d-r- R--s-v-lt')
  end
end
