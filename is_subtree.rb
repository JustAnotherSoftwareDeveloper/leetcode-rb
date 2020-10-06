# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_subtree(s, t)
    
    traverse(s,t)
end
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def equals(s,t)
    return true if s.nil? && t.nil?
    return false if t.nil? || s.nil?
    equals(s.left,t.left) && equals(s.right,t.right) && s.val == t.val
end
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def traverse(s,t) 
    return false if s.nil?
    equals(s,t) || is_subtree(s.left,t) || is_subtree(s.right,t)
end