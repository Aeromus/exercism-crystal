module AtbashCipher
  extend self
  ALP = ('a'..'z').join
  def encode(s)
    decode(s).scan(/.{1,5}/).map(&.[0]).join(" ")
  end
  def decode(s)
    s.downcase.gsub(/[^a-z0-9]/, "").tr(ALP, ALP.reverse)
  end
end
