day4_input = File.read('input_day4.txt')

# day4_input = "2-4,6-8
# 2-3,4-5
# 5-7,7-9
# 2-8,3-7
# 6-6,4-6
# 2-6,4-8"

day_4_array = day4_input.gsub(",", "\n")
sections_array = day_4_array.split(" ")

each_range = []

for item in sections_array do
    item_range = item.gsub("-", "..")
    each_range << item_range.split("..")
    
end

each_range

count = 0
while each_range.length > 0 do
    
    pair_of_ranges = each_range[0, 2]
    num1 = pair_of_ranges[0][0].to_i
    num2 = pair_of_ranges[0][1].to_i
    num3 = pair_of_ranges[1][0].to_i
    num4 = pair_of_ranges[1][1].to_i

    p range1 = (num1..num2).to_a
    p range2 = (num3..num4).to_a

    p both = range1 & range2
    p range1 & both
    p range2 & both

    # IF statement for part 1
    # if (both === [])
        
    #     print "NO"
    # elsif (range1 == both) || (range2 == both)
    #     count += 1
    #     print "YES"
    
    # end

    # IF statement for part 2
    if (both === [])
        
        print "NO"
    elsif (range1 & both == both) && (range2 & both == both)
        count += 1
        print "YES"
    
    end
    each_range.shift
    each_range.shift
    
end

p "count = #{count}"