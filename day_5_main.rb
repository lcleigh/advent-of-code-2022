pile_1 = ["R", "G", "J", "B", "T", "V", "Z"]
pile_2 = ["J", "R", "V", "L"]
pile_3 = ["S", "Q", "F"]
pile_4 = ["Z", "H", "N", "L", "F", "V", "Q", "G"]
pile_5 = ["R", "Q", "T", "J", "C", "S", "M", "W"]
pile_6 = ["S", "W", "T", "C", "H", "F"]
pile_7 = ["D", "Z", "C", "V", "F", "N", "J"]
pile_8 = ["L", "G", "Z", "D", "W", "R", "F", "Q"]
pile_9 = ["J", "B", "W", "V", "P"]

day5_input = File.read('input_day5.txt')

# day5_input = "move 1 from 2 to 1
# move 3 from 1 to 3
# move 2 from 2 to 1
# move 1 from 1 to 2"

# top is right bottom is left
# pile_1 = ["Z", "N"]
# pile_2 = ["M", "C", "D"]
# pile_3 = ["P"]

day_5_array = day5_input.gsub("\n", ",")
p day_5_array

sub_move = day_5_array.gsub("move ", "")
sub_from = sub_move.gsub(" from", " ")
sub_all = sub_from.gsub(" to", " ")

p sub_all

string_of_instructions = sub_all.split(",")
p string_of_instructions

array_of_instructions = []
for ins in string_of_instructions do
    array_of_instructions << ins.split(" ")
end

p array_of_instructions

array_of_ints = []
for array in array_of_instructions do
    array_of_ints << array.map(&:to_i)
end

p array_of_ints

# # # first step : move 1 from pile 2 to pile 1
# # pile_1 << pile_2[-1]
# # pile_2.delete_at(-1)

# # # second step : move 3 from 1 to 3
# # pile_3 << pile_1[-1]
# # pile_1.delete_at(-1)
# # pile_3 << pile_1[-1]
# # pile_1.delete_at(-1)
# # pile_3 << pile_1[-1]
# # pile_1.delete_at(-1)

for instruction in array_of_ints do
    n = instruction[0]
    
    from = instruction[1]
    
    to = instruction[2]
    
    n.times do
        p "mmmmm" 
        p eval("pile_#{to}") << eval("pile_#{from}")[-1]
        eval("pile_#{from}").delete_at(-1)
    end
end

p pile_1[-1]
p pile_2[-1]
p pile_3[-1]
p pile_4[-1]
p pile_5[-1]
p pile_6[-1]
p pile_7[-1]
p pile_8[-1]
p pile_9[-1]