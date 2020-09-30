# @param {String} s
# @return {Boolean}
def check_record(s)
    prev_late = 0
    prev_ab = false
    for day in s.chars do
        if day == 'A'
            return false if prev_ab == true
            prev_ab = true
            prev_late = 0
        end
        if day == 'L'
            return false if prev_late == 2
            prev_late+=1
        end
        if day == 'P'
            prev_late = 0
        end
    end
    true 
end