def area_of_square(a)
  area = a ** 2
  return area
end

def area_of_rec(l, w)
  area = l * w
  return area
end

def area_of_tri(b, h)
  area = (b * h) / 2
end

sidesSquare = 3
lengthRec = 10
widthRec = 3
baseTri = 6
heightTri = 3

puts "If I have a square with #{sidesSquare}, the area is #{area_of_square(sidesSquare)}."
puts "If a rectangle has #{lengthRec} length and #{widthRec} width, "
puts "The area of it is #{area_of_rec(lengthRec, widthRec)}."
puts "If a triangle has #{baseTri} base and #{heightTri} height, "
puts "The area of it is #{area_of_tri(baseTri, heightTri)}."
