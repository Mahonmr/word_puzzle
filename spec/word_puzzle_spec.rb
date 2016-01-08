require('rspec')
require('word_puzzle')

describe('Replace vowels with the dash symbol') do
  it 'will replace vowel with dash for one word one vowel' do
    expect('bad'.strip_vowel_replace_with_dash()).to(eq('b-d'))
  end

  it 'will replace vowel with dash for one word mutliple vowels' do
    expect('dude'.strip_vowel_replace_with_dash()).to(eq('d-d-'))
  end

  it 'will replace vowel with dash for mutliple words one vowel' do
    expect('bad dog bad cat'.strip_vowel_replace_with_dash()).to(eq('b-d d-g b-d c-t'))
  end

  it 'will replace vowel with dash for one mutliple words and mutliple vowels' do
    expect('good dog good cat'.strip_vowel_replace_with_dash()).to(eq('g--d d-g g--d c-t'))
  end

  it 'will replace upper case vowels with a dash for a word' do
    expect('About'.strip_vowel_replace_with_dash()).to(eq('-b--t'))
  end

  it 'will replace mutliple upper case vowels with a dash for a word' do
    expect('AbOut'.strip_vowel_replace_with_dash()).to(eq('-b--t'))
  end

  it 'will replace repeating vowels in a word' do
    expect('good'.strip_vowel_replace_with_dash()).to(eq('g--d'))
  end
end

describe('presentaion of resulting string') do
  it 'will not downcase consonants' do
    expect('We the PEoplE'.strip_vowel_replace_with_dash()).to(eq('W- th- P--pl-'))
  end

  it 'will not crash if a sting of numbers are entered' do
    expect('123456789'.strip_vowel_replace_with_dash()).to(eq('123456789'))
  end

  it 'will replace vowels with a dash within a sting of numbers' do
    expect('1234aeIoU6789'.strip_vowel_replace_with_dash()).to(eq('1234-----6789'))
  end

  it 'will not crash if a sting of non alphabet characters are entered' do
    expect('#$%^%@!'.strip_vowel_replace_with_dash()).to(eq('#$%^%@!'))
  end

  it 'will replace vowels with a dash within a sting of non alphabet characters' do
    expect('#$%AaaeeeuI^%@!'.strip_vowel_replace_with_dash()).to(eq('#$%--------^%@!'))
  end

  it 'will remove leading and trailing white spaces' do
    expect('   good dog good cat    '.strip_vowel_replace_with_dash()).to(eq('g--d d-g g--d c-t'))
    expect('   good     '.strip_vowel_replace_with_dash()).to(eq('g--d'))
  end

  it 'will remove extra white spaces inbetween words' do
    expect('   good dog   good   cat    '.strip_vowel_replace_with_dash()).to(eq('g--d d-g g--d c-t'))
  end

  it 'will return error message of blank' do
    expect(''.strip_vowel_replace_with_dash()).to(eq(nil))
  end

  it 'will return error message of blank' do
    expect('Believe you can and you\'re halfway there. Theodore Roosevelt'.strip_vowel_replace_with_dash()).\
    to(eq('B-l--v- y-- c-n -nd y--\'r- h-lfw-y th-r-. Th--d-r- R--s-v-lt'))
  end
end
