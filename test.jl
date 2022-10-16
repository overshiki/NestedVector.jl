include("src/nsvector.jl")
# using NestedArray

a = rand(Float32, (4,3,2))
display(a)
vs = from_array(a)
@show map(nvsize, vs)
@show vs |> nvsize
nvs = vs |> fullstack 

nvs |> display

@show all(a .== nvs)

a = rand(Float32, (10, 1, 1, 20))
a = from_array(a)
# @show length(size(a))
a = squeeze(a)
@show nvsize(a)

# @show cast(a, Float64) |> nvsize
a |> fullstack |> display

a = a |> transpose
@show nvsize(a)

a |> fullstack |> display

# map(x->print(size(x)), vs)