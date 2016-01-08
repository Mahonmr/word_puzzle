require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Flow of word puzzle game', {:type => :feature}) do
  it('takes you to the root path') do
    visit('/')
    expect(page).to have_content("Welcome To Word Puzzle")
  end
end
