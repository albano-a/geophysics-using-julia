using Plots
using CSV
using DataFrames

df = DataFrame(CSV.File("mape_data.csv"))

plot(df[!, 1],
    fill=(0, 1, "#4169e1"), 
    label="MAPE - Ricker",
    title="Erro Absoluto Médio Percentual",
    xlabel="X - Amostras",
    ylabel="MAPE",
    lw=2,
    legend=:topright,
    grid=true,
    framestyle=:box,
    color="#212121",
    size=(900, 500))  # Plot the first column
plot!(df[!, 2],
    fill=(0, 1, "#228b22"), 
    label="MAPE - Butterworth",
    lw=2,
    color="#212121")  # Add the second column to the existing plot

savefig("mape.png")

# x = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# y = 2* x .* x

# plot(x,y,
#     label="y",
#     title="x vezes 2",
#     xlabel="x",
#     ylabel="y",
#     lw=2,
#     legend=:topleft,
#     grid=true,
#     framestyle=:box)