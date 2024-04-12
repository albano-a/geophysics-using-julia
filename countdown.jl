println("Please enter your name:")
name = readline()

println("Hello, $name. How many seconds would you like to count down from?")
n = parse(Int, readline())

for i in n:-1:0
    println(i)
    sleep(1)
end