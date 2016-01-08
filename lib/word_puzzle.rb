class String
  require('pry')

  def strip_vowel_replace_with_dash
    return nil unless self.length > 0
    self.strip.squeeze(" ").gsub(/[aAeEiIoOuU]/, '-')
  end
end
