def fib(n)
  return n if n <= 1
  fibs = [1, 1]
  until fibs.length == n
    fibs << (fibs[-1] + fibs[-2])
  end
  return fibs[-1]
end

def fib_rec(n)
  return n if n <= 1
  return fib_rec(n-1) + fib_rec(n-2)
end