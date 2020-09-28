# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
    move_set = {'U' => 0, 'D' => 0, 'L' => 0, 'R' => 0}
    move_array = moves.chars()
    for move in move_array do
        move_set[move] = move_set[move]+1
    end
    move_set['U'] == move_set['D'] && move_set['L'] == move_set['R']
end

puts judge_circle("LRLRUD")