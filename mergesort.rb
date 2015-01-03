def mergesort(arr)
  return arr if arr.length == 1
  left = mergesort(arr[0...(arr.length/2)])
  right = mergesort(arr[(arr.length/2)...arr.length])
  return merge(left, right)
end

def merge(left, right)
  return left if right.length == 0
  return right if left.length == 0
  return left[0] <= right[0] ? [left.shift] + merge(left, right) : [right.shift] + merge(left, right)
end
