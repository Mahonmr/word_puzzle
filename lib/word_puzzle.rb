class String

  def word_puzzle
    self.strip.squeeze(" ").gsub(/[aAeEiIoOuU]/, '-') unless self.empty?
  end
end
