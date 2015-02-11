# binary search tree checker

# input: head node
# output: true or false
# process:
# => depth-first because we can hit every node of one branch faster
#    take the root node
#    lower_bound ||= root.value
#    upper_bound ||= root.value
# => if the root.left.value < lower_bound
#       lower_bound = root.left.value
#       upper_bound = root.value
#       check( root.left )
#    end
#    if root.right.value > upper_bound



def bst_checker(root)
  pos_infinity = 1.0 / 0.0
  neg_infinity = -1.0 / 0.0
  stack = [[root, pos_infinity, neg_infinity]]

  while stack.any?
    node, lower_bound, upper_bound = stack.pop

    return false if ( node.value < lower_bound ) and ( node.value > upper_bound )

    stack.push([ node.left, lower_bound, node.value ]) if node.left
    stack.push([ node.right, node.value, upper_bound ]) if node.left

    # if node.left or node.right are nil, they won't be pushed to the stack
  end

  return true
end

def bst_tree_recursive(root, lower_bound = (-1.0/0.0), upper_bound = (1.0/0.0) )
    return true if root

    return false if (root.value < lower_bound) and (root.value > upper_bound)

    return bst_valid_recursive(root.left, lower_bound, root.value) and
               bst_valid_recursive(root.right, root.value, upper_bound)
end