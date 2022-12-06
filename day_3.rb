

day3_input = File.read('input_day3.txt')
# day3_input = "vJrwpWtwJgWrhcsFMMfFFhFp
# jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
# PmmdzqPrVvPwwTWBwg
# wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
# ttgJtRGJQctTZtZT
# CrZsJsPPZsGzwwsLwLmpwMDw"

day3_array = day3_input.split("\n")

# print day3_array

items_in_both = []

for each_rucksack in day3_array do
    rucksack_item_count = each_rucksack.length
    half_rucksack_item_count = rucksack_item_count / 2
    compartment_1 = each_rucksack[0, half_rucksack_item_count]
    compartment_2 = each_rucksack[half_rucksack_item_count, half_rucksack_item_count]
    # puts compartment_1
    # puts compartment_2
    unique_items = compartment_1.split("") - compartment_2.split("")
    print "unique_items = #{unique_items}"
    item_in_both = compartment_1.split("") - unique_items
    # print item_in_both[0]

    items_in_both.append(item_in_both[0])
end

print "items_in_both = #{items_in_both}"

# Calculating the values:

total_value = 0

for letter in items_in_both do
    if letter >= 'a' && letter <= 'z'
        value = letter.ord - 96
        # puts value
        total_value += value
    else
        value = letter.ord - 38
        total_value += value
        # puts value
    # print value
    end

end

puts "total_value = #{total_value}"

puts "a = #{"a".ord - 96}"
puts "A = #{"A".ord - 38}"


puts "day3_array = #{day3_array}"

# group_of_elves = day3_array[0, 3]
# print [group_of_elves[0]]
# arr_1 = group_of_elves[0].split("")
# arr_2 = group_of_elves[1].split("")
# arr_3 = group_of_elves[2].split("")
# print arr_1
# print arr_2
# common_items = arr_1 & arr_2 & arr_3
# print common_items

all_common_items = []

while day3_array.length > 0 do
    group_of_elves = day3_array[0, 3]
    arr_1 = group_of_elves[0].split("")
    arr_2 = group_of_elves[1].split("")
    arr_3 = group_of_elves[2].split("")
    # print arr_1
    # print arr_2
    common_item = arr_1 & arr_2 & arr_3
    p common_item
    all_common_items << common_item[0]
    day3_array.shift
    day3_array.shift
    day3_array.shift
    p day3_array
end

p all_common_items

total_elf_value = 0
for item in all_common_items do
    if item >= 'a' && item <= 'z'
        elf_value = item.ord - 96
        
        total_elf_value += elf_value
    else
        elf_value = item.ord - 38
        total_elf_value += elf_value
        # puts value
    # print value
    end

end
p total_elf_value