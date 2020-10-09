class PigLatinizer


    def piglatinize(words)
        arr = words.split(" ")
         
        arr.collect! do |word|
          result = nil
          arr1 = word.split("")
          if word.start_with?(/[aeouiAEOUI]/)
            result = arr1.push("way")
          else
            count = 0
            arr2 =[]
            for word1 in arr1 do
              if word1.match(/[aeouiAEOUI]/)
                break
              end
              count +=1
            end
            arr2.push(arr1[count...])
            result = arr2.push(arr1[0..count-1]).flatten!.push("ay")
          end
          result.join("")
        end
        arr.join(" ")
    end
end

