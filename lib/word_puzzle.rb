class String

  def strip_vowel_replace_with_dash
    self.strip.squeeze(" ").gsub(/[aAeEiIoOuU]/, '-') unless self.empty?
  end
end
