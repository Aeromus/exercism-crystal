class Hamming
  def self.distance(strand1 : String, strand2 : String)
    if strand1.size != strand2.size
      raise ArgumentError.new(message = "Argument error")
    else
      length = strand1.size
      hamming_distance = 0
      if strand1.size != 0 && strand2.size!=0
        while length > 0
          if strand1[length-1] != strand2[length-1]
            hamming_distance +=1
          end
          length-=1
        end
      end
    end
    hamming_distance
  end
end
