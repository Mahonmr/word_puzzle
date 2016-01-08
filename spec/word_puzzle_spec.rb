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

describe('presentaion of resulting string') do
  it 'will not downcase consonants' do
    expect('We the PEoplE'.word_puzzle()).to(eq('W- th- P--pl-'))
  end

  it 'will not crash if a sting of numbers are entered' do
    expect('123456789'.word_puzzle()).to(eq('123456789'))
  end

  it 'will replace vowels with a dash within a sting of numbers' do
    expect('1234aeIoU6789'.word_puzzle()).to(eq('1234-----6789'))
  end

  it 'will not crash if a sting of non alphabet characters are entered' do
    expect('#$%^%@!'.word_puzzle()).to(eq('#$%^%@!'))
  end

  it 'will replace vowels with a dash within a sting of non alphabet characters' do
    expect('#$%AaaeeeuI^%@!'.word_puzzle()).to(eq('#$%--------^%@!'))
  end

  it 'will remove leading and trailing white spaces' do
    expect('   good dog good cat    '.word_puzzle()).to(eq('g--d d-g g--d c-t'))
    expect('   good     '.word_puzzle()).to(eq('g--d'))
  end

  it 'will remove extra white spaces inbetween words' do
    expect('   good dog   good   cat    '.word_puzzle()).to(eq('g--d d-g g--d c-t'))
  end

  it 'will return error message of blank' do
    expect(''.word_puzzle()).to(eq(nil))
  end
end
