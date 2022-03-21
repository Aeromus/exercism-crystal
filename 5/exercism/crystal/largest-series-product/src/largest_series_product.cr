class Series
  def self.largest_product(input : Str, series : Int)
    num=9
    list= [] of Int32
    while num >0 
      input.to_s.each_char do |c|
        if c == num
          list << num
          input.delete(c)
        end
        num-=1
      end
    end  
  end
end
