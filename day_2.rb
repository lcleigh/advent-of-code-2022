day2_input = File.read('input_day2.txt')
# day2_input = "A Y
# B X
# C Z"

# print day2_input

pairs_array = day2_input.split("\n")

# puts pairs_aray
# pairs_array

# Opponent
# A - Rock - 1 point
# B - Paper - 2 points
# C - Scissors - 3 points

# Me
# X - Rock - 1 point
# Y - Paper - 2 points
# Z - Scissors - 3 point

# X - need to lose
# Y - draw
# Z - need to win
# Win - 6 points
# Draw - 3 points
# Lose - 0 points
score_me = 0




for pair in pairs_array do
    
    
    # puts pair_nospace
    # both rock : draw => 4 points for me
    # Need to lose => Rock - scissors => 3 points
    if pair[0] == "A" && pair[2] == "X"
        score_me += 3
        
        
    # both paper : draw => 5 points for me
    # Need to draw => Paper - paper => 5 points
    elsif pair[0] == "B" && pair[2] == "Y"
        score_me += 5
        
    # both scissors : draw => 6 points for me
    # Need to win => scissors - rock => 7 points
    elsif pair[0] == "C" && pair[2] == "Z"
        score_me += 7
        
    # op rock, me paper: me win => 8 points for me
    # need to draw => rock - rock => 4 points
    elsif pair[0] == "A" && pair[2] == "Y"
        score_me += 4
        
    # op paper, me scissors: me win => 9 points for me
    # need to win => paper - scissors => 9
    elsif pair[0] == "B" && pair[2] == "Z"
        score_me += 9
        
    # op scissors, me rock: me win => 7 points for me
    # need to lose => scissors - paper => 2 points
    elsif pair[0] == "C" && pair[2] == "X"
        score_me += 2
        
    # op paper, me rock: me lose => 1 points for me
    # need to lose => paper - rock => 1 point
    elsif pair[0] == "B" && pair[2] == "X"
        score_me += 1
        
    # op scissors, me paper: me lose => 2 points for me
    # need to draw => scissors - scissors => 6 points
    elsif pair[0] == "C" && pair[2] == "Y"
        score_me += 6
        
    # op rock, me scissors: me win => 3 points for me
    # need to win => rock - paper = > 8 points
    elsif pair[0] == "A" && pair[2] == "Z"
        score_me += 8
        
    
    
    end

    # print score_me

    
end

print score_me



# puts my_score