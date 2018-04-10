x = 999
y = 999
z = 100
a = []

def isPalindrome(val)
  i = val.to_s
  l = i.length

  if l % 2 != 0
    return false
  end

  if i[0..(l/2)-1] == i[(l/2)..l].reverse
    return true
  end
  false
end

(z..y).reverse_each do |n|
  (z..x).reverse_each do |m|
    if isPalindrome(m*n)
      a.append(m*n)
    end
  end
end


print a.sort().reverse()[0]
