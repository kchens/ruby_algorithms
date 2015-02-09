
#inorder: LEFT, DATUM, RIGHT

def dfs_rec(tree, value)
  return nil if tree.nil?

  left = dfs_rec(tree.left, value)
  return left if left && left.value == value

  p tree.value
  return tree if tree.value == value

  right = dfs_rec(tree.right, value)
  return right if right && right.value == value

end

dfs_rec(tree, 324)




#preorder:  DATUM, LEFT, RIGHT
def dfs_rec(tree, value)
  return nil if tree.nil?

  p tree.value
  return tree if tree.value == value

  left = dfs_rec(tree.left, value)
  return left if left && left.value == value


  right = dfs_rec(tree.right, value)
  return right if right && right.value == value

end

dfs_rec(tree, 324)


#postorder:  LEFT, RIGHT, DATUM
def dfs_rec(tree, value)
  return nil if tree.nil?

  left = dfs_rec(tree.left, value)
  return left if left && left.value == value


  right = dfs_rec(tree.right, value)
  return right if right && right.value == value

  p tree.value
  return tree if tree.value == value

end

dfs_rec(tree, 324)