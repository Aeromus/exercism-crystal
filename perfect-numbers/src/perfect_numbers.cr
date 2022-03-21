class PerfectNumbers
  def self.classify(num)
    a=2
    sum=1
    if num<=0
       raise ArgumentError.new
    end
    while a<num 
      if num%a==0
        sum += a 
      end
      a+=1
    end
    
    if sum<num || num==1 
      "deficient"
    elsif sum>num
      "abundant"
    else
      "perfect"
    end

  end
end
