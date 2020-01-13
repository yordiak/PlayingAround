# For any positive number n, determine the first N numbers of a Fibonacci sequenc

function fibo(n,N)

f=0
a=Int64[]

    for i=1:N
        if i==1
           push!(a,0)
        elseif i==2
            push!(a,n)
        else
            f=a[i-1]+a[i-2]
            push!(a,f) 
        end            
    i= i+1
    end

return println("The fist ", N, " terms of a Fibonacci sequence of the number ", n, " is ", a)

end
 
