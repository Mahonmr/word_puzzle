require('rspec')
require('word_puzzle')

describe('Replace vowels with the dash symbol') do
  it 'will replace vowel with dash for one word one vowel' do
    expect('bad'.word_puzzle()).to(eq('b-d'))
  end

  it 'will replace vowel with dash for one word mutliple vowels' do
    expect('dude'.word_puzzle()).to(eq('d-d-'))
  end

  it 'will replace vowel with dash for mutliple words one vowel' do
    expect('bad dog bad cat'.word_puzzle()).to(eq('b-d d-g b-d c-t'))
  end

  it 'will replace vowel with dash for one mutliple words and mutliple vowels' do
    expect('good dog good cat'.word_puzzle()).to(eq('g--d d-g g--d c-t'))
  end

  it 'will replace upper case vowels with a dash for a word' do
    expect('About'.word_puzzle()).to(eq('-b--t'))
  end

  it 'will replace mutliple upper case vowels with a dash for a word' do
    expect('AbOut'.word_puzzle()).to(eq('-b--t'))
  end

  it 'will replace repeating vowels in a word' do
    expect('good'.word_puzzle()).to(eq('g--d'))
  end
end
