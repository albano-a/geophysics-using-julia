function square_area(side)
    return side * side
end

function circle_area(radius)
    return pi * radius * radius
end

function volume_sphere(radius)
    return (4/3) * pi * radius * radius * radius
end

println("Enter a value for the side of a square:")
side = parse(Float64, readline())
println("Enter a value for the radius of a circle or sphere")
radius = parse(Float64, readline())

area_sq = square_area(side)
area_circle = circle_area(radius)
vol_sphere = volume_sphere(radius)

area_circle = round(area_circle; digits=3)
vol_sphere = round(vol_sphere; digits=3)

println(" The area of a square with side $side is: $area_sq ")
println(" The area of a sphere with radius $radius is: $area_circle")
println(" The volume of a sphere with radius $radius is: $vol_sphere")