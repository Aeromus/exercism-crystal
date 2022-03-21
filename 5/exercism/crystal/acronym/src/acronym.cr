class Acronym
  def self.abbreviate(words)
    words.scan(/[a-zA-Z']+/).map(&.[0][0]).join.upcase
  end
end



