require('rspec')
require('word_puzzle')

describe('Replace vowels with the dash symbol') do
  it 'will replace vowel with dash for one word one vowel' do
    expect('bad'.word_puzzle()).to(eq('b-d'))
  end
end
