class PascalsTriangle
    def self.rows(number : Int)
        i=0
        list=[] of Array(Int32)
        rowx = [1] of Int32
        counter=1
        row2 = [1,1]
        prevrow = row2
        while i<=number
            if i==1
                list << [1]
            elsif i==2
                list << row2
            else
                while rowx.size<i
                    if rowx.size<i-1
                        rowx << prevrow[counter] + prevrow[counter-1]
                        counter+=1                        
                    else
                        rowx << 1
                        list << rowx
                        prevrow == rowx
                        counter=1
                    end         
                end     
                rowx = [1] of Int32
            end    
            i+=1
        end
    list
    end
end
