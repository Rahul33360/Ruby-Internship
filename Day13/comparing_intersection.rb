a1 = [1,2,3,6,3,nil,4,5,nil,6,nil,"",""]
a2 = [1,4,2,4,7,9]

p a1&a2     # [1, 2, 4]
p "------"
p a1&a1     # [1, 2, 3, 6, nil, 4, 5, ""]
# we are getting the distinct value when we are doing intersect with same array