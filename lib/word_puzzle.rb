class String

  def word_puzzle
    self.gsub(/[aAeEiIoOuU]/, '-')
  end
end
