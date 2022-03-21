class Binary
  def self.to_decimal(num : String)
    list = num.split
    i=0
    ans=0
    list = list.reverse
    while i<=list.size
      q=list[i]
      q.to_i32
      ans +=q*(2**i)
      i+=1
    end
    ans
  end
end
