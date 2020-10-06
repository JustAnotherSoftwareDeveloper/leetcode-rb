# @param {Array<Integer>} arr
# @return {Boolean}
def three_consecutive_odds(arr)
    consecutive = 0
    for n in arr
        if n.odd?
            consecutive+=1
        else
            consecutive = 0
        end
        return true if consecutive >= 3
    end
    false
end