# Find the Fibonacci series for N numbers...

function fibo(N)
f=0
a=Int64[]

    for i=1:N
        if i==1
           push!(a,0)
        elseif i==2
            push!(a,1)
        else
            f=a[i-1]+a[i-2]
            push!(a,f) 
        end            
    i= i+1
    end

return println("the Fibonacci sequence for N=", N, " is ", a)

end
