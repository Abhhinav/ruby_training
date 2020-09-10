pro = Proc.new {|n| n*n}
lam = lambda {|n| n*n}

p pro.call(3)
p lam.call(5)

lam2 = -> (n) {2*n} #shortcut to create lambda

p lam2.call(4)

p [1,2,3,4,5].map(&pro) #map takes block as a argument