function euler_method(f, y0, t0, tn, h)
    t = t0:h:tn
    y = zeros(length(t))
    y[1] = y0

    for i in 1:(length(t) - 1)
        y[i + 1] = y[i] + h * f(t[i], y[i])
    end

    return t, y
end

f(t, y) = y - t^2 + 1
y0 = 0.5
t0 = 0.0
tn = 2.0
h = 0.2

@time t, y = euler_method(f, y0, t0, tn, h)
println(t, y)
